output "vpc_id" {
  description = "The ID of the VPC created by the module"
  value       = module.vpc.vpc_id
}

output "vpc_cidr_block" {
  description = "The cidr_block created by the module"
  value       = module.vpc.vpc_cidr_block
}

output "public_subnets" {
  description = "IDs of the public subnets"
  value       = module.vpc.public_subnets
}

output "private_subnets" {
  description = "IDs of the private subnets"
  value       = module.vpc.private_subnets
}

output "subnet_ids" {
  description = "IDs of all subnets (public and private)"
  value       = concat(module.vpc.private_subnets, module.vpc.public_subnets)
}

output "azs" {
  description = "A list of availability zones specified as argument to this module"
  value       = module.vpc.azs
}
