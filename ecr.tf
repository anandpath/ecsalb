resource "aws_ecr_repository" "aws-ecr" {
  name = "anandecr"
  tags = {
    CreatedFor = "${var.app_name}ecr"
  }
}