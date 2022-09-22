# MODULES ORCHESTRATION
module "network" {
    source              = "./modules/network"
    vpc_cidr            = "${var.vpc_cidr}"
    vpc_sn_pub_cidr_1a  = "${var.vpc_sn_pub_cidr_1a}"
    vpc_sn_pub_cidr_1c  = "${var.vpc_sn_pub_cidr_1c}"
    vpc_sn_priv_cidr_1a = "${var.vpc_sn_priv_cidr_1a}"
    vpc_sn_priv_cidr_1c = "${var.vpc_sn_priv_cidr_1c}"
}

#module "database" {
#    source                        = "./modules/database"
#    vpc_sn_priv_id_1a             = "${module.network.vpc_sn_priv_id_1a}"
#    vpc_sn_priv_id_1c             = "${module.network.vpc_sn_priv_id_1c}"
#    vpc_sg_priv_id                = "${module.network.vpc_sg_priv_id}"
#    rds_identifier                = "${var.rds_identifier}"
#    rds_sn_group_name             = "${var.rds_sn_group_name}"
#    rds_param_group_name          = "${var.rds_param_group_name}"
#    rds_primary_availability_zone = "${var.rds_primary_availability_zone}"
#    rds_dbname                    = "${var.rds_dbname}"
#    rds_dbuser                    = "${var.rds_dbuser}"
#    rds_dbpassword                = "${var.rds_dbpassword}"   
#}

#module "compute" {
#    source                   = "./modules/compute"
#    vpc_cidr                 = "${var.vpc_cidr}"
#    vpc_id                   = "${module.network.vpc_id}"
#    vpc_sn_pub_id_1a         = "${module.network.vpc_sn_pub_id_1a}"
#    vpc_sn_pub_id_1c         = "${module.network.vpc_sn_pub_id_1c}"
#    ec2_lt_name              = "${var.ec2_lt_name}"
#    ec2_lt_ami               = "${var.ec2_lt_ami}"
#    ec2_lt_instance_type     = "${var.ec2_lt_instance_type}"
#    ec2_lt_ssh_key_name      = "${var.ec2_lt_ssh_key_name}"
#    ec2_lb_name              = "${var.ec2_lb_name}"
#    ec2_lb_tg_name           = "${var.ec2_lb_tg_name}"
#    ec2_asg_name             = "${var.ec2_asg_name}"
#    ec2_asg_desired_capacity = "${var.ec2_asg_desired_capacity}"
#    ec2_asg_min_size         = "${var.ec2_asg_min_size}"
#    ec2_asg_max_size         = "${var.ec2_asg_max_size}"
#    rds_endpoint             = "${module.database.rds_endpoint}"
#    rds_dbuser               = "${var.rds_dbuser}"
#    rds_dbpassword           = "${var.rds_dbpassword}"
#    rds_dbname               = "${var.rds_dbname}"
#}