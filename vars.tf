variable "aws_region" {
  default = "ap-south-1"
}
variable "environment" {
  default = "dev"
}
variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "CIDR block of the vpc"
}
variable "public_subnets_cidr" {
  type        = list(any)
  default     = ["10.0.0.0/20", "10.0.128.0/20"]
  description = "CIDR block for Public Subnet"
}
variable "private_subnets_cidr" {
  type        = list(any)
  default     = ["10.0.16.0/20", "10.0.144.0/20"]
  description = "CIDR block for Private Subnet"
}
provider "aws" {
  region = var.aws_region
}
locals {
  availability_zones = ["${var.aws_region}a", "${var.aws_region}b"]
}

# Added for ECS
variable "app_name" {
  default = "ecsservice"
}
variable "app_environment" {
  default = "dev"
}
variable "aws_cloudwatch_retention_in_days" {
  type        = number
  description = "AWS CloudWatch Logs Retention in Days"
  default     = 1
}
