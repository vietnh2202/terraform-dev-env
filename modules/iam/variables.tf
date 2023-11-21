variable "environment" {
  description = "Environment Type"
  type = string
}

variable "project_name" {
  description = "Name of Project"
  type = string
}

variable "iam_role_name" {
  description = "IAM Role name"
  type = string
}

variable "iam_policy_attachment_name" {
  description = "IAM Policy Attachment name"
  type = string 
}

variable "iam_policy_arn" {
  description = "IAM Policy ARN"
  type = string
}

variable "rds_role_name" {
  description = "RDS Role name"
  type = string
}

variable "ssm_role_name" {
  description = "SSM Role name"
  type = string
}

variable "ssm_attach_role" {
  description = "SSM Attach Role"
  type = string
}

variable "ssm_policy" {
  description = "SSM Policy"
  type = string
}

variable "ssm_user_policy" {
  description = "SSM User Policy"
  type = string
}

variable "ssm_user" {
  description = "SSM User"
  type = string
}




