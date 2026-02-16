terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-west-3"
}

module "ec2_instance" {
  source = "./modules/ec2"

  name            = var.instance_name
  instance_type   = var.instance_type
  vpc_id          = var.vpc_id
  subnet_id       = var.subnet_id
  key_name        = var.key_name
  public_key_path = var.public_key_path
}

output "instance_public_ip" {
  description = "Public IP of EC2 instance"
  value       = module.ec2_instance.public_ip
}

output "instance_public_dns" {
  description = "Public DNS of EC2 instance"
  value       = module.ec2_instance.public_dns
}