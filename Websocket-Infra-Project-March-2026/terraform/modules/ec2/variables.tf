variable "ami" {
  type = string
}

variable "key_name" {
  type = string
}

variable "instance_type" {
  type    = string
  default = "t3.micro"  # free-tier instance
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

variable "role" {
  description = "Role of the EC2 instance (k8, worker, db, etc)"
  type        = string
}

variable "subnet_id" {}

variable "name" {}

variable "root_volume_size" {
  type    = number
  default = 8
}

variable "root_volume_type" {
  type    = string
  default = "gp3"
}
