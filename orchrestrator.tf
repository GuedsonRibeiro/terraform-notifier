# MODULES
module "vpc" {
    source            = "./modules/network"
    vpc_cidr          = "${var.vpc_cidr}"
    sn_pub_1a_cidr    = "${var.vpc_sn_pub_cidr_1a}"
    sn_pub_1c_cidr    = "${var.vpc_sn_pub_cidr_1c}"
    sn_priv_1a_cidr   = "${var.vpc_sn_priv_cidr_1a}"
    sn_priv_1c_cidr   = "${var.vpc_sn_priv_cidr_1c}"
}

#module "rds" {
#    source            = "./modules/rds"
#    sn_priv_1a_id     = "${module.vpc.sn_priv_id_1a}"
#    sn_priv_1c_id     = "${module.vpc.sn_priv_id_1c}"
#    sg_priv_id        = "${module.ec2.sg_priv_id}"
#    family            = "${var.rds_family}"
#    instance_class    = "${var.rds_instance_class}"
#    storage_type      = "${var.rds_storage_type}"
#    allocated_storage = "${var.rds_allocated_storage}"
#    db_name           = "${var.rds_db_name}"
#}

#module "ec2" {
#    source            = "./modules/ec2"
#    vpc_id            = "${module.vpc.vpc_id}"
#    ami               = "${var.ec2_ami}"
#    instance_type     = "${var.ec2_instance_type}"
#    sn_pub_1a_id      = "${module.vpc.sn_pub_id_1a}"
#    sn_pub_1c_id      = "${module.vpc.sn_pub_id_1c}"
#    desired_capacity  = "${var.ec2_desired_capacity}"
#    min_size          = "${var.ec2_min_size}"
#    max_size          = "${var.ec2_max_size}"
#    rds_endpoint      = "${module.rds.rds_endpoint}"
#    rds_user          = "${var.rds_user}"
#    rds_password      = "${var.rds_password}"
#    rds_name          = "${var.rds_name}"
#}