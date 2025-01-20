terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.10.0"
    }
  }
  backend "s3" {
    bucket = "terraform-remote-backend-s3-save5936"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-state-lock"
    encrypt = true

  }
}


provider "aws" {
  # Configuration options
  region = "us-east-1"
}



