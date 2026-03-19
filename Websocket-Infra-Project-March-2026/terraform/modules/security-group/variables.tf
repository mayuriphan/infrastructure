variable "vpc_id" {
  type = string
}

variable "my_ip" {
  type = string
}

variable "env" {
  type = string
}

variable "private_subnet_cidrs" {
  type = list(string)
}