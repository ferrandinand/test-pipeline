require 'spec_helper'

DUMMY_SPIKE_MYSQL = 'rds-fixture'
DUMMY_SPIKE_MYSQL_INSTANCE_CLASS = 'db.m3.large'
DUMMY_SPIKE_MYSQL_ALLOCATED_STORAGE = 100
DUMMY_SPIKE_MYSQL_ENGINE = 'mysql'
DUMMY_SPIKE_MYSQL_ENGINE_VERSION = '5.7.11'
DUMMY_SPIKE_MYSQL_DATABASENAME = 'rdstest'
DUMMY_SPIKE_RDS_SECURITY_GROUP_ID = 'sg-73f9680f'
DUMMY_SPIKE_MYSQL_USERNAME = 'root'
DUMMY_SPIKE_MYSQL_PARAMETER_GROUP = 'default.mysql5.7'
DUMMY_SPIKE_MYSQL_SUBNET_AZ1 = 'subnet-1739f44c'
DUMMY_SPIKE_MYSQL_SUBNET_AZ2 = 'subnet-ba7dc4f3'

describe rds(DUMMY_SPIKE_MYSQL) do
  it { should be_available }
  its(:db_instance_class) { should eq DUMMY_SPIKE_MYSQL_INSTANCE_CLASS }
  its(:allocated_storage) { should eq DUMMY_SPIKE_MYSQL_ALLOCATED_STORAGE }
  its(:engine) { should eq DUMMY_SPIKE_MYSQL_ENGINE }
  its(:engine_version) { should eq DUMMY_SPIKE_MYSQL_ENGINE_VERSION }
  its(:db_name) { should eq DUMMY_SPIKE_MYSQL_DATABASENAME }
  it { should have_security_group(DUMMY_SPIKE_RDS_SECURITY_GROUP_ID) }
  its(:master_username) { should eq 'root' }
  it { should have_db_parameter_group(DUMMY_SPIKE_MYSQL_PARAMETER_GROUP) }
  it { should belong_to_subnet(DUMMY_SPIKE_MYSQL_SUBNET_AZ1,DUMMY_SPIKE_MYSQL_SUBNET_AZ2)}
end

describe rds_db_parameter_group(DUMMY_SPIKE_MYSQL_PARAMETER_GROUP) do
  its(:basedir) { should eq '/rdsdbbin/mysql' }
end
