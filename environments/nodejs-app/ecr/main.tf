module "ecr" {
  source = "../../../Modules/ecr"

  repository_name         = var.repository_name
  repository_type         = var.repository_type
  create_lifecycle_policy = var.create_lifecycle_policy
  repository_lifecycle_policy = var.repository_lifecycle_policy


}
