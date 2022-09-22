# DATABASE OUTPUT TO BE REUSED
output "rds_endpoint" {
    value = "${aws_db_instance.rds_dbinstance.endpoint}"
}

variable "endpoint" {
    default = "true"
}

output "aws_db_instance_rds_dbinstance_endpoint" {
    value = "${var.endpoint =="true"? aws_db_instance.rds_dbinstance.endpoint : ""}"
}