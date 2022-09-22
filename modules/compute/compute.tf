# RESOURCE: SECURITY GROUP
resource "aws_security_group" "ec2_sg_pub" {
    vpc_id = "${var.vpc_id}"
    egress {
        from_port   = "${var.ec2_sg_port_all}"
        to_port     = "${var.ec2_sg_port_all}"
        protocol    = "${var.ec2_sg_protocol_any}"
        cidr_blocks = ["${var.ec2_sg_cidr_all}"]
    }
    ingress {
        from_port   = "${var.ec2_sg_port_all}"
        to_port     = "${var.ec2_sg_port_all}"
        protocol    = "${var.ec2_sg_protocol_any}"
        cidr_blocks = ["${var.vpc_cidr}"]
    }
    ingress {
        from_port   = "${var.ec2_sg_port_ssh}"
        to_port     = "${var.ec2_sg_port_ssh}"
        protocol    = "${var.ec2_sg_protocol_tcp}"
        cidr_blocks = ["${var.ec2_sg_cidr_all}"]
    }
    ingress {
        from_port   = "${var.ec2_sg_port_http}"
        to_port     = "${var.ec2_sg_port_http}"
        protocol    = "${var.ec2_sg_protocol_tcp}"
        cidr_blocks = ["${var.ec2_sg_cidr_all}"]
    }
}

resource "aws_security_group" "ec2_sg_priv" {
    vpc_id = "${var.vpc_id}"
    egress {
        from_port   = "${var.ec2_sg_port_all}"
        to_port     = "${var.ec2_sg_port_all}"
        protocol    = "${var.ec2_sg_protocol_any}"
        cidr_blocks = ["${var.ec2_sg_cidr_all}"]
    }
    ingress {
        from_port   = "${var.ec2_sg_port_all}"
        to_port     = "${var.ec2_sg_port_all}"
        protocol    = "${var.ec2_sg_protocol_any}"
        cidr_blocks = ["${var.vpc_cidr}"]
    }
}

# RESOURCE: EC2 LAUNCH TEMPLATE
data "template_file" "user_data" {
    template = "${file("./modules/compute/scripts/user_data.sh")}"
    vars = {
        rds_endpoint   = "${var.rds_endpoint}"
        rds_dbuser     = "${var.rds_dbuser}"
        rds_dbpassword = "${var.rds_dbpassword}"
        rds_dbname     = "${var.rds_dbname}"
    }
}

resource "aws_launch_template" "ec2_lt" {
    name                   = "${var.ec2_lt_name}"
    image_id               = "${var.ec2_lt_ami}"
    instance_type          = "${var.ec2_lt_instance_type}"
    key_name               = "${var.lt_ssh_key_name}"
    user_data              = "${base64encode(data.template_file.user_data.rendered)}"
    vpc_security_group_ids = [aws_security_group.ec2_sg_pub.id]
}

# RESOURCE: APPLICATION LOAD BALANCER
#resource "aws_lb" "lb_app_notify" {
#    name               = "lb-app-notify"
#    load_balancer_type = "application"
#    subnets            = ["${var.sn_pub_1a_id}", "${var.sn_pub_1c_id}"]
#    security_groups    = [aws_security_group.sg_pub.id]
    
#    tags = {
#        Name = "lb_app_notify"
#    }
#}

#resource "aws_lb_target_group" "tg_app_notify" {
#    name     = "tg-app-notify"
#    vpc_id   = "${var.vpc_id}"
#    protocol = "${var.protocol}"
#    port     = "${var.port}"

#    tags = {
#        Name = "tg_app_notify"
#    }
#}

#resource "aws_lb_listener" "listener_app_notify" {
#    load_balancer_arn = aws_lb.lb_app_notify.arn
#    protocol          = "${var.protocol}"
#    port              = "${var.port}"
    
#    default_action {
#        type             = "forward"
#        target_group_arn = aws_lb_target_group.tg_app_notify.arn
#    }
#}

# RESOURCE: AUTO SCALING GROUP
#resource "aws_autoscaling_group" "asg_app_notify" {
#    name                = "asg_app_notify"
#    vpc_zone_identifier = ["${var.sn_pub_1a_id}", "${var.sn_pub_1c_id}"]
#    desired_capacity    = "${var.desired_capacity}"
#    min_size            = "${var.min_size}"
#    max_size            = "${var.max_size}"
#    target_group_arns   = [aws_lb_target_group.tg_app_notify.arn]

#    launch_template {
#        id      = aws_launch_template.lt_app_notify.id
#        version = "$Latest"
#    }
   
#}