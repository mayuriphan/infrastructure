output "k8_public_ip" {
  value = module.ec2_k8.public_ip
}

output "monitoring_public_ip" {
  value = module.ec2_monitoring.public_ip
}

output "db_public_ip" {
  value = module.ec2_db.public_ip
}

output "worker1_public_ip" {
  value = module.ec2_worker1.public_ip
}

output "worker2_public_ip" {
  value = module.ec2_worker2.public_ip
}

output "rabbit_public_ip" {
  value = module.ec2_rabbit.public_ip
}

output "bastion_public_ip" {
  value = module.ec2_bastion.public_ip
}