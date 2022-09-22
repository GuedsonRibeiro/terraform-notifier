# COMPUTE OUTPUT TO BE REUSED
output "ec2_sg_pub_id" {
    value = "${aws_security_group.ec2_sg_pub.id}"
}

output "ec2_sg_priv_id" {
    value = "${aws_security_group.ec2_sg_priv.id}"
}