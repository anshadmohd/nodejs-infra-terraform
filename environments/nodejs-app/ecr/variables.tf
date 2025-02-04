
variable "repository_name" {
  description = "The name of the ECR repository to create."
  type        = string
  default     = "base"
}

variable "repository_type" {
  description = "The type of the ECR repository. Default is 'ECR'."
  type        = string
  default     = "private"
}

variable "create_lifecycle_policy" {
  description = "Boolean flag indicating whether to create a lifecycle policy for the repository."
  type        = bool
  default     = false
}

variable "repository_lifecycle_policy" {
  description = "Lifecycle policy for the repository"
  default     = <<JSON
{
  "rules": [
    {
      "rulePriority": 1,
      "description": "remove old production images",
      "selection": {
        "tagStatus": "tagged",
        "tagPrefixList": [
          "production"
        ],
        "countType": "imageCountMoreThan",
        "countNumber": 50
      },
      "action": {
        "type": "expire"
      }
    }
  ]
}
JSON
}

