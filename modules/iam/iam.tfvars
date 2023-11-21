environment = [
  "dev"
]

project_name = [
  "three-tier-architecture"
]

iam_role_name = [
  "ec2_role"
]

iam_policy_attachment_name = [
  "ec2-policy-attachment"
]

iam_policy_arn = [
  "arn:aws:iam::aws:policy/AmazonRDSFullAccess"
]

rds_role_name = [
  "rds_backup"
]

ssm_role_name = [
  "ssm-role"
]

ssm_attach_role = [
  "aws_iam_role.ssm-role.name"
]

ssm_policy = [
  "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM"
]

ssm_user_policy = [
  "ssm-user-policy"
]

ssm_user = [
  "terraform"
]