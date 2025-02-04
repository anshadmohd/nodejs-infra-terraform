module "ec2_instance" {
  source = "../../../modules/bastion-server"

  environment           = var.environment
  ami                   = var.ami
  vpc_id                = data.terraform_remote_state.vpc.outputs.vpc_id
  subnet_id             = data.terraform_remote_state.vpc.outputs.public_subnets[0]
  user_data             = var.user_data
  key_name              = var.key_name
  bastion_sg_name       = var.bastion_sg_name
  bastion_instance_type = var.bastion_instance_type
  public_key            = var.public_key
  cpu_credits           = var.cpu_credits
  monitoring            = var.monitoring
  create_iam_instance_profile = var.create_iam_instance_profile


  enable_volume_tags = var.enable_volume_tags
  root_block_device  = var.root_block_device

  ingress_rules = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      description = "all"
    }

  ]

  // Define the egress rule
  egress_rules = [
    {
      from_port   = 0
      to_port     = 65535
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}
