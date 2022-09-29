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
    default = "ASIAVEUC6N6OJGFYQJ57"
}

variable "secret_access_key" {
    type    = string
    default = "+WImZNnJgTnhecloR1AuukG36DZIVL/u0CZ9KU9F"
}

variable "session_token" {
    type    = string
    default = "FwoGZXIvYXdzEJ7//////////wEaDDvMBfShgAzM6Uvz4SK9AYoMd/FnB/n1n26TKNdT0kSgv/kpBM1GZ2A7Ch6X0g2jSHRP56z5OZVF1721vV9mSkzJvF6RitgLg78kOxAYp36YRcH+R9FtC6EaAnWujl3k8h1SMj+pkgDt8I7UhpfZ5rpXgRAuMtCjoU/LWEvyczdP3s3T7OhpSe8U7QWkxfinYks6IiAApaC49mnOQuPWqLP8lBxUAejdxy5EiqKu176ilWY4qR9I4LE+/SlpcgTvvG8oph0b2XDg8yjSMCiok9aZBjItOaTLOaYm5Ux6gO/be9c6R9d/kLf/2nGsqw8jEFWIvIKbTWvz04U0LfYvdcYU"
}