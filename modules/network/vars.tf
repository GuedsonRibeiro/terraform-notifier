# NETWORK VARS DEFAULT VALUES
variable "vpc_cidr" {
    type    = string
    default = "20.0.0.0/16"
}

variable "vpc_cidr_all" {
    type    = string
    default = "0.0.0.0/0"
}

variable "vpc_dns_hostnames" {
    type    = bool
    default = true
}

variable "vpc_sn_pub_cidr_1a" {
    type    = string
    default = "20.0.1.0/24"
}

variable "vpc_sn_pub_cidr_1c" {
    type    = string
    default = "20.0.2.0/24"
}

variable "vpc_sn_pub_map_public_ip_on_launch" {
    type    = bool
    default = true
}

variable "vpc_sn_priv_cidr_1a" {
    type    = string
    default = "20.0.3.0/24"
}

variable "vpc_sn_priv_cidr_1c" {
    type    = string
    default = "20.0.4.0/24"
}

variable "vpc_sn_availability_zone_1a" {
    type    = string
    default = "us-east-1a"
}

variable "vpc_sn_availability_zone_1c" {
    type    = string
    default = "us-east-1c"
}

# SECURITY GROUP VARS DEFAULT VALUES
variable "vpc_sg_port_all" {
    type    = number
    default = 0
}

variable "vpc_sg_port_ssh" {
    type    = number
    default = 22
}

variable "vpc_sg_port_http" {
    type    = number
    default = 80
}

variable "vpc_sg_protocol_any" {
    type    = string
    default = "-1"
}

variable "vpc_sg_protocol_tcp" {
    type    = string
    default = "tcp"
}