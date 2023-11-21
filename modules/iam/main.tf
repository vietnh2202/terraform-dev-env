locals {
  required_tags = {
    Environment = var.environment
    Project     = var.project_name
  }
}

resource "aws_iam_role" "ec2_role" {
  name = var.iam_role_name

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_policy_attachment" "ec2_policy_attachment" {
  name       = var.iam_policy_attachment_name
  roles      = [aws_iam_role.ec2_role.name]
  policy_arn = var.iam_policy_arn
  
}

resource "aws_iam_role" "ssm-role" {
  name = var.ssm_role_name

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "ssm-attach" {
  role       = var.ssm_attach_role 
  policy_arn = var.ssm_policy
}

resource "aws_iam_user_policy" "ssm_user_policy" {
  name = var.ssm_user_policy
  user = var.ssm_user

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "ssm:StartSession",
      "Resource": "*"
    }
  ]
}
EOF
}

# resource "aws_iam_role_policy" "rds_backup" {
#   name = var.rds_role_name
#   role = aws_iam_role_policy.rds_backup.name

#   policy = <<EOF
# {
#   "Version": "2012-10-17",
#   "Statement": [
#     {
#       "Action": [
#         "s3:Get*",
#         "s3:List*"
#       ],
#       "Effect": "Allow",
#       "Resource": [
#         "${aws_s3_bucket.database_backups.arn}",
#         "${aws_s3_bucket.database_backups.arn}/*"
#       ]
#     }
#   ]
# }
# EOF
# }