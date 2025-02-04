module "ecr" {
  source  = "terraform-aws-modules/ecr/aws"
  version = "2.3.1"
  
  repository_name             = var.repository_name
  create_lifecycle_policy     = var.create_lifecycle_policy
  repository_lifecycle_policy = var.repository_lifecycle_policy
}
