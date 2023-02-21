terraform {
  required_version = ">= 0.12"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.55.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "dev"
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-atila-lindao"
  tags = {
    Name        = "My Bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Atila Rampazo"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}
