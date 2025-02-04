terraform {
  backend "s3" {
    bucket = "terraform-infrastrucure-states-nodejs"
    key    = "vpc-state/nodejs-vpc-terraform.tfstate"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.84.0"
    }
  }
}

