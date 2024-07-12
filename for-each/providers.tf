terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.57.0"
    }
  }

backend "s3" {
    bucket = "sushma-remote-state"
    key    = "expense-for-loop"
    region = "us-east-1"
    dynomodb-table = "daws-78s-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}