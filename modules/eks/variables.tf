################################################################################
# Cluster
################################################################################

variable "environment" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "cluster_version" {
  description = "Kubernetes version to use for the EKS cluster"
  type        = string
}
variable "authentication_mode" {
  description = "The authentication mode for the cluster. Valid values are `CONFIG_MAP`, `API` or `API_AND_CONFIG_MAP`"
  type        = string
}

variable "cluster_endpoint_private_access" {
  description = "Indicates whether or not the Amazon EKS private API server endpoint is enabled"
  type        = bool
}

variable "cluster_endpoint_public_access" {
  description = "Indicates whether or not the Amazon EKS public API server endpoint is enabled"
  type        = bool
}

variable "vpc_id" {
  description = "vpc id"
  type        = string
}

variable "private_subnets" {
  description = "private subnets"
  type        = list(string)
}

variable "public_subnets" {
  description = "public subnets"
  type        = list(string)
}

variable "enabled_cluster_log_types" {
  description = "A list of the desired control plane logs to enable. For more information, see Amazon EKS Control Plane Logging documentation (https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html)"
  type        = list(string)
}


################################################################################
# EKS Addons
################################################################################

variable "cluster_addons" {
  description = "Map of cluster addon configurations to enable for the cluster. Addon name can be the map keys or set with `name`"
  type        = any
}

################################################################################
# EKS Node_Groups
################################################################################

variable "node_groups_name" {
  description = "node groups name"
  type        = string
}

variable "min_size" {
  description = "minimum number of basenodes"
  type        = string
}

variable "max_size" {
  description = "maximum number of basenodes"
  type        = string
}

variable "desired_size" {
  description = "desired size"
  type        = string
}

variable "disk_size" {
  description = "Disk size of base nodes"
  type        = string
  default     = "100"
}

variable "ami_type" {
  description = "Type of ami for the basenodes"
  type        = string
  default     = "AL2_x86_64"
}


variable "instance_types" {
  description = "instance types of basenodes"
  type        = string
}

variable "capacity_type" {
  description = "capacity type of basenodes"
  type        = string
}

variable "node_groups_key_name" {
  description = "Name of the node group key cluster"
  type        = string
}


variable "source_security_group_id" {
  description = "Id of the bastion security_group"
  type        = string
}


variable "public_key" {
  description = "bastion public_key"
  type        = string
}

variable "bastion_sg_id" {
  description = "Id of the bastion security_group"
  type        = string
}


variable "principal_arn" {
  description = "The ARN of the IAM role for the admin user"
  type        = string
}

