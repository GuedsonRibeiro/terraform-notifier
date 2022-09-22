# NETWORK VARS CUSTOM VALUES
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

# DATABASE VARS CUSTOM VALUES
variable "rds_identifier" {
    type    = string
    default = "rds-notifier"
}

variable "rds_dbname" {
    type    = string
    default = "rds-db-notifier"
}

variable "rds_db_sn_group_name" {
    type    = string
    default = "rds-db-sn-group-notifier"
}

variable "rds_db_param_group_name" {
    type    = string
    default = "rds-db-param-group-notifier"
}

variable "rds_primary_availability_zone" {
    type    = string
    default = "us-east-1a"
}

# COMPUTE VARS CUSTOM VALUES
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