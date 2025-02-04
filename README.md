# nodejs-infra-terraform
# Terraform Infrastructure for Node.js App Deployment on AWS

## **Project Structure**

```plaintext
📦 Terraform Project Directory
├── environments
│   └── nodejs-app
│       ├── bastion-server      # Environment-specific Bastion Server resources
│       ├── ecr                 # Environment-specific Elastic Container Registry setup
│       ├── eks                 # Environment-specific Elastic Kubernetes Service resources
│       └── vpc-network         # Environment-specific VPC and networking setup
├── modules
│   ├── bastion-server          # Reusable Bastion Server module
│   ├── ecr                     # Reusable ECR module
│   ├── eks                     # Reusable EKS module
│   └── vpc-network             # Reusable VPC module
├── .gitignore                  # Git ignore file for Terraform and related files
└── README.md                   # Project documentation

