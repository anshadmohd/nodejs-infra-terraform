variable "key_name" {
  description = "Name of the Bastion Key"
  type        = string
  default     = "bastion-key"
}

variable "bastion_sg_name" {
  description = "Name of the Bastion sg Name"
  type        = string
  default     = "bastion"
}

variable "user_data" {
  description = "User data for Bastion EC2"
  type        = string
}

variable "bastion_instance_type" {
  description = "Instance Type of Bastion Instance"
  type        = string
  default     = "t3.micro"
}

variable "environment" {
  description = "Name of Environment"
  type        = string
  default     = "nodejs"
}

variable "monitoring" {
  description = "monitoring status"
  type        = string
  default     = "true"
}

variable "ami" {
  description = "ID of AMI to use for the instance"
  type        = string
  default     = "ami-04b4f1a9cf54c11d0"
}

variable "public_key" {
  description = "Public key for Bastion"
  type        = string
}

variable "cpu_credits" {
  description = "cpu credits for bastion"
  type        = string
  default     = "standard"
}

variable "enable_volume_tags" {
  description = "Whether to enable tags on the EBS volume."
  type        = bool
  default     = false  # Ensure this is set to false
}

variable "create_iam_instance_profile" {
  type        = string
  default     = "true"
}


variable "root_block_device" {
  description = "Configuration for root block device."
  type = list(object({
    encrypted   = bool
    volume_type = string
    throughput  = number
    volume_size = number
    tags        = map(string)
  }))
  default = [
    {
      encrypted   = true
      volume_type = "gp3"
      throughput  = 200
      volume_size = 8
      tags = {
        Name   = "bastion"
      }
    }
  ]
}
