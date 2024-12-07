terraform{
    required_providers {
        aws = {
            version = "~>5.6"
            source = "hashicorp/aws"
        }

    }

    backend "s3" {
      bucket = "demo-bucket-31"
      key = "k8-expense"
      dynamodb_table = "demo_key"
      region = "us-east-1"
    }
}

provider "aws" {
    region = "us-east-1"
  
}