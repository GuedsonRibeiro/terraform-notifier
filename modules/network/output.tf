# VPC
output "vpc_id" {
    value = "${aws_vpc.vpc.id}"
}

# PUBLIC SUBNETS
output "vpc_sn_pub_id_1a" {
    value = "${aws_subnet.sn_pub_1a.id}"
}

output "vpc_sn_pub_id_1c" {
    value = "${aws_subnet.sn_pub_1c.id}"
}

# PRIVATE SUBNETS
output "vpc_sn_priv_id_1a" {
    value = "${aws_subnet.sn_priv_1a.id}"
}

output "vpc_sn_priv_id_1c" {
    value = "${aws_subnet.sn_priv_1c.id}"
}