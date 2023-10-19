variable "aws_region" {
  description = "The AWS region to create resources in"
  default     = "us-west-1"
}

variable "cluster_name" {
  description = "Name for the EKS cluster"
  default     = "my-cluster"
}

variable "node_group_name" {
  description = "Name for the EKS node group"
  default     = "worker-group"
}

variable "instance_type" {
  description = "Instance type for the EKS workers"
  default     = "t2.large"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_block" {
  description = "CIDR block for the public subnet"
  default     = "10.0.1.0/24"
}

variable "private_subnet_1_cidr_block" {
  description = "CIDR block for the first private subnet"
  default     = "10.0.2.0/24"
}

variable "private_subnet_2_cidr_block" {
  description = "CIDR block for the second private subnet"
  default     = "10.0.3.0/24"
}

variable "ami_id" {
  description = "AMI ID for the bastion host"
}

variable "key_name" {
  description = "Name of the key pair to use for the bastion host"
}
