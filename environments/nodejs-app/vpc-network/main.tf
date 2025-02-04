provider "aws" {
  profile = "aws-nodejs"
  region  = "us-east-1"
}

module "vpc" {
  source = "../../../modules/vpc-network"

  azs                = var.azs
  environment        = var.environment
  cidr_slash16       = var.cidr_slash16
  region             = var.region
  enable_nat_gateway = var.enable_nat_gateway
  create_igw         = var.create_igw

  create_vpc                  = var.create_vpc
  create_egress_only_igw      = var.create_egress_only_igw
  ipv6_cidr                   = var.ipv6_cidr
  enable_ipv6                 = var.enable_ipv6
  manage_default_network_acl  = var.manage_default_network_acl
  default_network_acl_ingress = var.default_network_acl_ingress
  default_network_acl_name    = var.default_network_acl_name
  default_network_acl_egress  = var.default_network_acl_egress
  default_network_acl_tags    = var.default_network_acl_tags

}
