# MODULES ORCHESTRATION
module "network" {
    source              = "./modules/network"
    vpc_cidr            = "${var.vpc_cidr}"
    vpc_sn_pub_cidr_1a  = "${var.vpc_sn_pub_cidr_1a}"
    vpc_sn_pub_cidr_1c  = "${var.vpc_sn_pub_cidr_1c}"
    vpc_sn_priv_cidr_1a = "${var.vpc_sn_priv_cidr_1a}"
    vpc_sn_priv_cidr_1c = "${var.vpc_sn_priv_cidr_1c}"
}

module "database" {
    source                        = "./modules/database"
    vpc_sn_priv_id_1a             = "${module.network.vpc_sn_priv_id_1a}"
    vpc_sn_priv_id_1c             = "${module.network.vpc_sn_priv_id_1c}"
    ec2_sg_priv_id                = "${module.compute.ec2_sg_priv_id}"
    rds_identifier                = "${var.rds_identifier}"
    rds_dbname                    = "${var.rds_dbname}"
    rds_db_sn_group_name          = "${var.rds_db_sn_group_name}"
    rds_db_param_group_name       = "${var.rds_db_param_group_name}"
    rds_primary_availability_zone = "${var.rds_primary_availability_zone}"
    
}

module "compute" {
    source           = "./modules/compute"
    vpc_id           = "${module.network.vpc_id}"
    vpc_cidr         = "${var.vpc_cidr}"
#    ami              = "${var.ec2_ami}"
#    instance_type    = "${var.ec2_instance_type}"
#    sn_pub_1a_id     = "${module.vpc.sn_pub_id_1a}"
#    sn_pub_1c_id     = "${module.vpc.sn_pub_id_1c}"
#    desired_capacity = "${var.ec2_desired_capacity}"
#    min_size         = "${var.ec2_min_size}"
#    max_size         = "${var.ec2_max_size}"
#    rds_endpoint     = "${module.database.rds_endpoint}"
#    rds_user         = "${var.rds_user}"
#    rds_password     = "${var.rds_password}"
#    rds_name         = "${var.rds_name}"
}