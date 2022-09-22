# VPC
resource "aws_vpc" "vpc" {
    cidr_block           = "${var.vpc_cidr}"
    enable_dns_hostnames = "${var.vpc_dns_hostnames}"
}

# INTERNET GATEWAY
resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.vpc.id
}

# PUBLIC SUBNETS
resource "aws_subnet" "sn_pub_1a" {
    vpc_id                  = aws_vpc.vpc.id
    cidr_block              = "${var.vpc_sn_pub_cidr_1a}"
    map_public_ip_on_launch = "${var.vpc_sn_pub_map_public_ip_on_launch}"
    availability_zone       = "${var.vpc_sn_availability_zone_1a}"
}

resource "aws_subnet" "sn_pub_1c" {
    vpc_id                  = aws_vpc.vpc.id
    cidr_block              = "${var.vpc_sn_pub_cidr_1c}"
    map_public_ip_on_launch = "${var.vpc_sn_pub_map_public_ip_on_launch}"
    availability_zone       = "${var.vpc_sn_availability_zone_1c}"
}

# PRIVATE SUBNETS
resource "aws_subnet" "sn_priv_1a" {
    vpc_id                  = aws_vpc.vpc.id
    cidr_block              = "${var.vpc_sn_priv_cidr_1a}"
    availability_zone       = "${var.vpc_sn_availability_zone_1a}"
}

resource "aws_subnet" "sn_priv_1c" {
    vpc_id                  = aws_vpc.vpc.id
    cidr_block              = "${var.vpc_sn_priv_cidr_1c}"
    availability_zone       = "${var.vpc_sn_availability_zone_1c}"
}

# ROUTE TABLES FOR THE PUBLIC SUBNETS
resource "aws_route_table" "rt_pub_1a" {
    vpc_id = aws_vpc.vpc.id
    route {
        cidr_block = "${var.vpc_cidr_all}"
        gateway_id = aws_internet_gateway.igw.id
    }
}

resource "aws_route_table" "rt_pub_1c" {
    vpc_id = aws_vpc.vpc.id
    route {
        cidr_block = "${var.vpc_cidr_all}"
        gateway_id = aws_internet_gateway.igw.id
    }
}

# ROUTE TABLES FOR THE PRIVATE SUBNETS
resource "aws_route_table" "rt_priv_1a" {
    vpc_id = aws_vpc.vpc.id
}

resource "aws_route_table" "rt_priv_1c" {
    vpc_id = aws_vpc.vpc.id
}

# PUBLIC SUBNETS ASSOCIATION TO ROUTE TABLES
resource "aws_route_table_association" "sn_pub_1a_To_rt_pub_1a" {
  subnet_id      = aws_subnet.sn_pub_1a.id
  route_table_id = aws_route_table.rt_pub_1a.id
}

resource "aws_route_table_association" "sn_pub_1c_To_rt_pub_1c" {
  subnet_id      = aws_subnet.sn_pub_1c.id
  route_table_id = aws_route_table.rt_pub_1c.id
}

# PRIVATE SUBNETS ASSOCIATION TO ROUTE TABLES
resource "aws_route_table_association" "sn_priv_1a_To_rt_priv_1a" {
  subnet_id      = aws_subnet.sn_priv_1a.id
  route_table_id = aws_route_table.rt_priv_1a.id
}

resource "aws_route_table_association" "sn_priv_1c_To_rt_priv_1c" {
  subnet_id      = aws_subnet.sn_priv_1c.id
  route_table_id = aws_route_table.rt_priv_1c.id
}