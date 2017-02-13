provider "aws" {}

module "my_rds_instance" {
  source = "github.com/ferrandinand/tf_aws_rds"

  rds_instance_name = "${var.rds_instance_name}"
  rds_allocated_storage = "${var.rds_allocated_storage}"
  rds_engine_type = "${var.rds_engine_type}"
  rds_instance_class = "${var.rds_instance_class}"
  rds_engine_version = "${var.rds_engine_version}"
  database_name = "${var.database_name}"
  database_user = "${var.database_user}"
  database_password = "${var.database_password}"
  rds_security_group_id = "${var.rds_security_group_id}"
  db_parameter_group = "${var.db_parameter_group}"

  subnet_az1 = "${var.subnet_az1}"
  subnet_az2 = "${var.subnet_az2}"
}
