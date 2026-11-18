# Synthetic demo infrastructure - not deployed anywhere.

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "demo_reports" {
  bucket = "acme-work-os-demo-reports-example"

  tags = {
    Environment = "demo"
    Owner       = "platform-team"
  }
}
