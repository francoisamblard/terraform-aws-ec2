variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "terraform-ec2-francois"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "vpc_id" {
  description = "VPC ID where security group will be created"
  type        = string
  default     = "vpc-083052666da04fb53"
}

variable "subnet_id" {
  description = "Subnet ID where instance will be launched"
  type        = string
  default     = "subnet-0d2b7f8e860ab5e38"
}

variable "key_name" {
  description = "AWS key pair name"
  type        = string
  default     = "terraform-key-francois"
}

variable "public_key_path" {
  description = "Path to the SSH public key to import"
  type        = string
  default     = "~/.ssh/terraform-aws-key.pub"
}
