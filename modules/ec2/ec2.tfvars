project_name = [
  "three-tier-architecture"
]

environment = [
  "dev"
]

image_id = [
  "ami-00448a337adc93c05"
]

instance_type = [
  "t3a.micro"
]

name_prefix = [
  "app-launch-template"
]

key_name = [
  "terraform"
]

connection_type = [
  "ssh"
]

connection_user = [
  "ec2-user"
]

connection_host = [
  "self.public_ip"
]

iamiam_instance_profile = [
  "aws_iam_role.ssm-role.name"
]