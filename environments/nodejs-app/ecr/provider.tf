terraform {
  backend "s3" {
    bucket = "terraform-infrastrucure-states-nodejs"
    key    = "ecr-base-state/ecr-base-terraform.tfstate"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.67.0"
    }
  }
}


provider "aws" {
  profile = "aws-nodejs"
  region  = "us-east-1"

}
