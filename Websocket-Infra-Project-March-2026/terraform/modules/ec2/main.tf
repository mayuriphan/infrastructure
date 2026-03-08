resource "aws_instance" "this" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.sg_id]

  iam_instance_profile   = var.instance_profile

  associate_public_ip_address = true

  tags = {
    Name = var.name
    Environment = var.env
    Role        = var.role
  }
}

# resource "aws_launch_template" "this" {
#   name_prefix   = "${var.env}-lt"
#   image_id      = var.ami
#   instance_type = "t3.micro"
#   key_name      = var.key_name
#   iam_instance_profile {
#     name = var.instance_profile
#   }

#   network_interfaces {
#     associate_public_ip_address = true
#     security_groups             = [var.sg_id]
#   }
# }