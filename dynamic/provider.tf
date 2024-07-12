terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.57.0"
    }
  }

backend "s3" {
    bucket = "sushma-remote-state"
    key    = "dynamic-demo"
    region = "us-east-1"
    dynamodb_table = "daws-78s-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}