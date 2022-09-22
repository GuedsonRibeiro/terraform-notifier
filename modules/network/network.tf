# VPC
resource "aws_vpc" "vpc" {
    cidr_block           = "${var.vpc_cidr}"
    enable_dns_hostnames = "${var.vpc_dns_hostnames}"

#    tags = {
#        Name = "vpc"  
#    }
}

# INTERNET GATEWAY
resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.vpc.id

#    tags = {
#        Name = "igw"
#    }
}

# PUBLIC SUBNETS
resource "aws_subnet" "sn_pub_1a" {
    vpc_id                  = aws_vpc.vpc.id
    cidr_block              = "${var.vpc_sn_pub_cidr_1a}"
    map_public_ip_on_launch = "${var.vpc_sn_pub_map_public_ip_on_launch}"
    availability_zone       = "${var.vpc_sn_availability_zone_1a}"

#    tags = {
#        Name = "sn_pub_1a"
#    }
}

resource "aws_subnet" "sn_pub_1c" {
    vpc_id                  = aws_vpc.vpc.id
    cidr_block              = "${var.vpc_sn_pub_cidr_1c}"
    map_public_ip_on_launch = "${var.vpc_sn_pub_map_public_ip_on_launch}"
    availability_zone       = "${var.vpc_sn_availability_zone_1c}"

#    tags = {
#        Name = "sn_pub_1c"
#    }
}

# PRIVATE SUBNETS
#resource "aws_subnet" "sn_priv_1a" {
#    vpc_id                  = aws_vpc.vpc.id
#    cidr_block              = "${var.vpc_sn_priv_cidr_1a}"
#    availability_zone       = "${var.vpc_sn_availability_zone_1a}"

#    tags = {
#        Name = "sn_priv_1a"
#    }
#}

#resource "aws_subnet" "sn_priv_1c" {
#    vpc_id                  = aws_vpc.vpc.id
#    cidr_block              = "${var.vpc_sn_priv_cidr_1c}"
#    availability_zone       = "${var.vpc_sn_availability_zone_1c}"

#    tags = {
#        Name = "sn_priv_1c"
#    }
#}

# ELASTIC IP FOR NAT GATEWAY UNDER PUBLIC SUBNETS
resource "aws_eip" "eip_pub_1a" {
    depends_on = [aws_internet_gateway.igw]

#    tags = {
#        Name = "eip_pub_1a"
#    }
}

resource "aws_eip" "eip_pub_1c" {
    depends_on = [aws_internet_gateway.igw]

#    tags = {
#        Name = "eip_pub_1c"
#    }
}

# NAT GATEWAY UNDER PUBLIC SUBNETS
resource "aws_nat_gateway" "ngw_pub_1a" {
    allocation_id = aws_eip.eip_pub_1a.id
    subnet_id     = aws_subnet.sn_pub_1a.id

#    tags = {
#        Name = "ngw_pub_1a"
#    }

    depends_on = [aws_internet_gateway.igw]
}

#resource "aws_nat_gateway" "ngw_pub_1c" {
#    allocation_id = aws_eip.eip_pub_1c.id
#    subnet_id     = aws_subnet.sn_pub_1c.id

#    tags = {
#        Name = "ngw_pub_1c"
#    }

#    depends_on = [aws_internet_gateway.igw]
#}

# ROUTE TABLES FOR THE PUBLIC SUBNETS
resource "aws_route_table" "rt_pub_1a" {
    vpc_id = aws_vpc.vpc.id

    route {
        cidr_block = "${var.vpc_cidr_all}"
        gateway_id = aws_internet_gateway.igw.id
    }

#    tags = {
#        Name = "rt_pub_1a"
#    }
}

resource "aws_route_table" "rt_pub_1c" {
    vpc_id = aws_vpc.vpc.id

    route {
        cidr_block = "${var.vpc_cidr_all}"
        gateway_id = aws_internet_gateway.igw.id
    }

#    tags = {
#        Name = "rt_pub_1c"
#    }
}

# ROUTE TABLES FOR THE PRIVATE SUBNETS
#resource "aws_route_table" "rt_priv_1a" {
#    vpc_id = aws_vpc.vpc.id

#    route {
#        cidr_block = "${var.vpc_cidr_all}"
#        gateway_id = aws_nat_gateway.ngw_pub_1a.id
#    }

#    tags = {
#        Name = "rt_priv_1a"
#    }
#}

#resource "aws_route_table" "rt_priv_1c" {
#    vpc_id = aws_vpc.vpc.id

#    route {
#        cidr_block = "${var.vpc_cidr_all}"
#        gateway_id = aws_nat_gateway.ngw_pub_1c.id
#    }

#    tags = {
#        Name = "rt_priv_1c"
#    }
#}

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
#resource "aws_route_table_association" "sn_priv_1a_To_rt_priv_1a" {
#  subnet_id      = aws_subnet.sn_priv_1a.id
#  route_table_id = aws_route_table.rt_priv_1a.id
#}

#resource "aws_route_table_association" "sn_priv_1c_To_rt_priv_1c" {
#  subnet_id      = aws_subnet.sn_priv_1c.id
#  route_table_id = aws_route_table.rt_priv_1c.id
#}