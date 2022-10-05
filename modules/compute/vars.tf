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
    default = "ASIAVEUC6N6OBVG5PCVO"
}

variable "secret_access_key" {
    type    = string
    default = "XL2Wum5uqqmHJ/+rcrnIccOpsWDPpKIp89T2YiHz"
}

variable "session_token" {
    type    = string
    default = "FwoGZXIvYXdzEDcaDCrJqujSwn2GWNB8/iK9AfptW1qUoVXICz4LyLx5qVnHYRgaJhS5UOOH5U2Lps1UwMs7nN4mxLKBfVCAVdflX/bsgjya2kLflO+Dui/wMeXTUsKoHkAjFZGJJzozFqRyt9fe/eHK7+nidKZr5Rdrt2E8P5z+AmecgzNPQFlad+Z75JYgc02eSPiKCw/N/wpaOTzL5uf1x55pn47743xzUjaZDd529DRt7uDJKpA7wUU9l4OA+wbYoFi+8mCUrvqkAD2TZJkq9p+lbibLWyi3/veZBjItRD53GIjc4tQ043mqqpHE95ojk4yj9RKB5tsn+RSzuhUnt4VOyNcyyIJVbRHP"
}