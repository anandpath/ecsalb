aws_region = "ap-south-1"

# these are zones and subnets examples
availability_zones = ["${var.aws_region}a", "${var.aws_region}b"]

# these are used for tags
app_environment = "dev"