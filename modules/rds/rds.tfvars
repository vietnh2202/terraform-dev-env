project_name = [
  "three-tier-architecture"
]

environment = [
  "dev"
]

engine_name = [
  "mysql"
]

engine_version = [
  "8.0"
]

storage = [
  "10"
]

identifier = [
  "db-mysql-dev"
]

instance_class = [
  "db.t3.micro"
]

multi_az = [
  "true"
]

database_name = [
  "dbmysql"
]

database_username = [
  "dbadmin"
]

database_password = [
  "S0methingS3cure!"
]

database_port = [
  "3306"
]

publicly_accessible = [
  "false"
]

database_snapshot = [
  "true"
]

db_subnet_group_name = [
  "aws_db_subnet_group.main.id"
]

db_security_group = [
  "aws_security_group.db_security_group.id, aws_iam_role.ec2_role.name"
]

backup_retention_period = [
  "7"
]

backup_window = [
  "02:00-03:00"
]
