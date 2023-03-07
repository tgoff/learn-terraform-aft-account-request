provider "aws" {
region = "us-east-1"
  assume_role {
    role_arn = var.aft-exec-role-arn
  }
  default_tags {
    tags = {
      managed_by = "AFT"
    }
  }
}
