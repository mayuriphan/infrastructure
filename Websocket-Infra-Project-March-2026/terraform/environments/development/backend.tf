terraform {
  backend "s3" {
    bucket         = "may-app-terraform-state-development"
    key            = "development/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "may-app-terraform-lock-development"
    encrypt        = true
  }
}