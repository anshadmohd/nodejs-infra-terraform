# Configure the AWS Provider
provider "aws" {
  profile = "aws-nodejs"
  region  = "us-east-1"

}

terraform {
  backend "s3" {
    bucket = "terraform-infrastrucure-states-nodejs"
    key    = "eks-state/eks-terraform.tfstate"
    region = "us-east-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.84.0"
    }
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "terraform-infrastrucure-states-nodejs"
    key    = "vpc-state/nodejs-vpc-terraform.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "ec2_instance" {
  backend = "s3"
  config = {
    bucket = "terraform-infrastrucure-states-nodejs"
    key    = "bastion-state/bastion-terraform.tfstate"
    region = "us-east-1"
  }
}
