variable "cluster_name" {
  type = string
}

variable "cluster_version" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "subnet_ids" {
  type = list(string)
}

variable "sg_id" {
  type = string
}

variable "key_name" {
  type = string
}

variable "env" {
  type = string
}

variable "eks_managed_node_groups" {
  type = any
}