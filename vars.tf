# VPC VARS
variable "vpc_cidr" {
    type    = string
    default = "10.0.0.0/16"
}

variable "vpc_sn_pub_cidr_1a" {
    type    = string
    default = "10.0.1.0/24"
}

variable "vpc_sn_pub_cidr_1c" {
    type    = string
    default = "10.0.2.0/24"
}

variable "vpc_sn_priv_cidr_1a" {
    type    = string
    default = "10.0.3.0/24"
}

variable "vpc_sn_priv_cidr_1c" {
    type    = string
    default = "10.0.4.0/24"
}

# RDS VARS
variable "rds_family" {
    type    = string
    default = "mysql8.0"
}

variable "rds_instance_class" {
    type    = string
    default = "db.t2.micro"
}

variable "rds_storage_type" {
    type    = string
    default = "gp2"
}

variable "rds_allocated_storage" {
    type    = number
    default = 20
}

variable "rds_db_name" {
    type    = string
    default = "rdsdbnotifier"
}

variable "rds_user" {
    type    = string
    default = "rdsadmin"
}

variable "rds_password" {
    type    = string
    default = "rdsadminpwd"
}

variable "rds_name" {
    type    = string
    default = "rdsnotifier"
}

# EC2 VARS
variable "ec2_ami" {
    type    = string
    default = "ami-02e136e904f3da870"
}

variable "ec2_instance_type" {
    type    = string
    default = "t2.micro"
}

variable "ec2_desired_capacity" {
    type    = number
    default = 4
}

variable "ec2_min_size" {
    type    = number
    default = 2
}

variable "ec2_max_size" {
    type    = number
    default = 8
}