variable "region" {
  default = "ap-south-1"
}

variable "ami" {}                 # Ubuntu AMI
variable "key_name" {}            # Name of EC2 key pair
variable "my_ip" {}               # My public IP for SSH
variable "vpc_cidr" {}            # VPC CIDR block
variable "public_subnet_cidr" {}  # Public subnet CIDR
variable "env" {}                 # Environment string