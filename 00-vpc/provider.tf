terraform {
    required_providers {
      aws ={
        source = "hashicorp/aws"
        version = "~> 5.7"
      }
    }

    backend "s3" {
        bucket = "demo-bucket-31"
        key = "eks-terraforrm"
        region = "us-east-1"
        dynamodb_table = "demo_key"
    }
}

provider "aws" {
    region = "us-east-1"
  
}