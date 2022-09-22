# NETWORK VARS DEFAULT VALUES (INPUT IS REQUIRED BECAUSE NO DEFAULT IS DEFINED)
variable "vpc_id" {}
variable "vpc_cidr" {}
#variable "vpc_sn_pub_id_1a" {}
#variable "vpc_sn_pub_id_1c" {}

# DATABASE VARS DEFAULT VALUES (INPUT IS REQUIRED BECAUSE NO DEFAULT IS DEFINED)
#variable "rds_endpoint" {}
#variable "rds_user" {}
#variable "rds_password" {}
#variable "rds_dbname" {}


# COMPUTE VARS DEFAULT VALUES
variable "ec2_sg_cidr_all" {
    type    = string
    default = "0.0.0.0/0"
}

variable "ec2_sg_port_all" {
    type    = number
    default = 0
}

variable "ec2_sg_port_ssh" {
    type    = number
    default = 22
}

variable "ec2_sg_port_http" {
    type    = number
    default = 80
}

variable "ec2_sg_protocol_any" {
    type    = string
    default = "-1"
}

variable "ec2_sg_protocol_tcp" {
    type    = string
    default = "tcp"
}

variable "ec2_ami" {
    type    = string
    default = "ami-02e136e904f3da870"
}

variable "ec2_instance_type" {
    type    = string
    default = "t2.micro"
}

variable "ec2_ssh_key" {
    type    = string
    default = "vockey"
}

variable "ec2_protocol" {
    type    = string
    default = "HTTP"
}

variable "ec2_port" {
    type    = number
    default = 80
}

variable "ec2_desired_capacity" {
    type    = number
    default = 8
}

variable "ec2_min_size" {
    type    = number
    default = 4
}

variable "ec2_max_size" {
    type    = number
    default = 16
}