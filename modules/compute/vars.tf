# NETWORK VARS DEFAULT VALUES (INPUT IS REQUIRED BECAUSE NO DEFAULT IS DEFINED)

variable "vpc_id" {}
variable "vpc_cidr" {}
variable "vpc_sn_pub_az1_id" {}
variable "vpc_sn_pub_az2_id" {}
variable "vpc_sg_pub_id" {}


# DATABASE VARS DEFAULT VALUES (INPUT IS REQUIRED BECAUSE NO DEFAULT IS DEFINED)

variable "rds_endpoint" {}
variable "rds_dbuser" {}
variable "rds_dbpassword" {}
variable "rds_dbname" {}


# COMPUTE VARS DEFAULT VALUES

variable "ec2_lt_name" {
    type    = string
    default = "ec2_lt_name"
}

variable "ec2_lt_ami" {
    type    = string
    default = "ami-02e136e904f3da870"
}

variable "ec2_lt_instance_type" {
    type    = string
    default = "t2.micro"
}

variable "ec2_lt_ssh_key_name" {
    type    = string
    default = "ec2_lt_ssh_key_name"
}

variable "ec2_lb_name" {
    type    = string
    default = "ec2-lb-name"
}

variable "ec2_lb_tg_name" {
    type    = string
    default = "ec2-lb-tg-name"
}

variable "ec2_lb_tg_protocol" {
    type    = string
    default = "HTTP"
}

variable "ec2_lb_tg_port" {
    type    = number
    default = 80
}

variable "ec2_lb_listener_protocol" {
    type    = string
    default = "HTTP"
}

variable "ec2_lb_listener_port" {
    type    = number
    default = 80
}

variable "ec2_lb_listener_action_type" {
    type    = string
    default = "forward"
}

variable "ec2_asg_name" {
    type    = string
    default = "ec2-asg-name"
}

variable "ec2_asg_desired_capacity" {
    type    = number
    default = 8
}

variable "ec2_asg_min_size" {
    type    = number
    default = 4
}

variable "ec2_asg_max_size" {
    type    = number
    default = 16
}

variable "access_key_id" {
    type    = string
    default = "ASIAVEUC6N6OFCXNNDMW"
}

variable "secret_access_key" {
    type    = string
    default = "2clU8V49Qw3zf3wZ4Cu++iAeNiNdBAMEItiRumty"
}

variable "session_token" {
    type    = string
    default = "FwoGZXIvYXdzEJD//////////wEaDKHrn1SLXop6tFFu7iK9AeE2AKteJfWcSpqvNh2KY/BbcCNBqSYcDfQZfjYFTjFAEHIEG1Pg3ccUFm0igz1CseQMYw/c17fYWkeh8xiF5y1/a44dxDSwN/jv4Nd6RMtUsV/1C+ZX9iLNviBoD0zHBAfhO+DgHrcFgC9eO2FPy4WhrtSzjAll/d+b4RBbh3icEr153oERJMoeBeSn1IDn4r06hi5MNI2N9z0QWl3K6MWnRa1BWCHsrPIBYHKh0Qw7oquylLpXbGmsS/x4QijPk9OZBjItM4HmHBL8EWSvyUAgSrIjPbQQVNwziMplPmEFlivsLFsUVu2TXoFz8bRWkyCf"
}