variable "ami" {
  type = string
}

variable "key_name" {
  type = string
}

variable "instance_type" {
  type    = string
  default = "t2.micro"  # free-tier instance
}

variable "sg_id" {
  type = string
}

variable "instance_profile" {
  type = string
}

variable "env" {
  type = string
}

variable "subnet_id" {}

variable "name" {}