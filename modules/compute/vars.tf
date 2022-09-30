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

variable "ec2_lb_listener_name" {
    type    = string
    default = "ec2-lb-listener-name"
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
    default = "ASIAVEUC6N6OKLST5KLT"
}

variable "secret_access_key" {
    type    = string
    default = "4c5p6xZ6nVYw7Lk0oQ3bwdX5NtcGTh6ZCZsXidVb"
}

variable "session_token" {
    type    = string
    default = "FwoGZXIvYXdzELj//////////wEaDPOaosat5eBIL2UiGCK9AariG2LcFNWqf1WpHmZe3WRlzTaKhYzeDp6PXPYSjIhhE4e28w/ITX0qmquhyGZg6UyhXNYHxNoOsdjBy9qKkUPmQTg3Kc31WcwDVVm7t7XWuam5iHlfQvS/udHw1T2ORystlwe3DFY3OSgKSKPzwJYfZAv+pETzxKPAvHO7Qxc+PkK6au3DAzovY5hkBkJbl00q9QvfWocpIec+WZHh5sMha2gZTql98ZVpRKagaotc8ZQd1/gWHYA2dOcZWSigidyZBjIttaM1W3RY1QB6nwMe9iQ/djJRHEHkJfnNee2phJFiP0jJQNCZgousH6gmRH8O"
}