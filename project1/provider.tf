terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "danibish-bucket"
    key    = "project1/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table  = "dynamodb-state-locking"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}



