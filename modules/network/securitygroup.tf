# RESOURCE: SECURITY GROUP
resource "aws_security_group" "vpc_sg_pub" {
    vpc_id = "${var.vpc_id}"
    egress {
        from_port   = "${var.vpc_sg_port_all}"
        to_port     = "${var.vpc_sg_port_all}"
        protocol    = "${var.vpc_sg_protocol_any}"
        cidr_blocks = ["${var.vpc_cidr_all}"]
    }
    ingress {
        from_port   = "${var.vpc_sg_port_all}"
        to_port     = "${var.vpc_sg_port_all}"
        protocol    = "${var.vpc_sg_protocol_any}"
        cidr_blocks = ["${var.vpc_cidr}"]
    }
    ingress {
        from_port   = "${var.vpc_sg_port_ssh}"
        to_port     = "${var.vpc_sg_port_ssh}"
        protocol    = "${var.vpc_sg_protocol_tcp}"
        cidr_blocks = ["${var.vpc_cidr_all}"]
    }
    ingress {
        from_port   = "${var.vpc_sg_port_http}"
        to_port     = "${var.vpc_sg_port_http}"
        protocol    = "${var.vpc_sg_protocol_tcp}"
        cidr_blocks = ["${var.vpc_cidr_all}"]
    }
}

resource "aws_security_group" "vpc_sg_priv" {
    vpc_id = "${var.vpc_id}"
    egress {
        from_port   = "${var.vpc_sg_port_all}"
        to_port     = "${var.vpc_sg_port_all}"
        protocol    = "${var.vpc_sg_protocol_any}"
        cidr_blocks = ["${var.vpc_cidr_all}"]
    }
    ingress {
        from_port   = "${var.vpc_sg_port_all}"
        to_port     = "${var.vpc_sg_port_all}"
        protocol    = "${var.vpc_sg_protocol_any}"
        cidr_blocks = ["${var.vpc_cidr}"]
    }
}

