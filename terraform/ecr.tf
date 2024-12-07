resource "aws_ecr_repository" "lambda" {
  name                 = "lambda"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}