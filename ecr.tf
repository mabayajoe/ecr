provider "aws" {
  region = "us-east-1" # Fixed region name with quotes and correct spelling
}

resource "aws_ecr_repository" "FirstECR" {
  name                 = "ecr-repo"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}
