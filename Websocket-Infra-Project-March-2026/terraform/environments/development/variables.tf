variable "region" {
  default = "ap-south-1"
}

variable "ami" {}                 # Ubuntu AMI
variable "key_name" {}            # Name of EC2 key pair
variable "my_ip" {}               # My public IP for SSH
variable "vpc_cidr" {}            # VPC CIDR block
variable "public_subnet_cidrs" {}  # Public subnet CIDR
variable "private_subnet_cidrs" {} # Private subnet CIDR
variable "env" {}                 # Environment string
variable "availability_zones" {}
# variable "subnet_ids" {}

# variable "private_subnet_ids" {}
# variable "node_group" {}

# EKS
variable "cluster_name" {
  type = string
}

variable "cluster_version" {
  type = string
  default = "1.31"
}
