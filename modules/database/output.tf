# DATABASE OUTPUT TO BE REUSED
output "rds_endpoint" {
    value = "${aws_db_instance.rds_dbinstance.endpoint}"
}

variable "db_endpoint" {
    default = "true"
}

output "aws_db_instance_rds_dbinstance_endpoint" {
    value = "${var.db_endpoint =="true"? aws_db_instance.rds_dbinstance.endpoint : ""}"
}