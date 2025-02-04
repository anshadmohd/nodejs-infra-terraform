variable "repository_name" {
  description = "The name of the ECR repository to create."
  type        = string
}

variable "repository_type" {
  description = "The type of the ECR repository. Default is 'ECR'."
  type        = string
}

variable "create_lifecycle_policy" {
  description = "Boolean flag indicating whether to create a lifecycle policy for the repository."
  type        = bool
}

variable "repository_lifecycle_policy" {
    type        = string
  description = "lifecycle policy for the repository"
}
