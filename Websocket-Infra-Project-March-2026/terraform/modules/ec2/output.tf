# output "launch_template_id" {
#   value       = aws_launch_template.this.id
#   description = "Launch Template ID for use in AutoScaling Group"
# }

output "public_ip" {
  value = aws_instance.this.public_ip
}

output "private_ip" {
  value = aws_instance.this.private_ip
}

output "instance_id" {
  value = aws_instance.this.id
}