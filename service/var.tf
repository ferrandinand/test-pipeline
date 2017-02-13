variable "rds_instance_name" {
  default = "rds-fixture"
} 

variable "rds_instance_class" {
  default = "db.m3.large"
}

variable "rds_allocated_storage" { 
  default = "100"
}

variable "rds_engine_type" {
  default = "mysql" 
}

variable "rds_engine_version" {
  default = "5.7.11"
}

variable "database_name" {
  default = "rdstest"
}

variable "database_user" {
  default = "root"
}

variable "database_password" {
  default = "Ardillaterraform25"
}

variable "rds_security_group_id" {
  default = "sg-73f9680f"
}

variable "db_parameter_group" {
  default = "default.mysql5.7"
}

variable "subnet_az1" {
  default = "subnet-1739f44c"
}

variable "subnet_az2" {
 default = "subnet-ba7dc4f3"
}
