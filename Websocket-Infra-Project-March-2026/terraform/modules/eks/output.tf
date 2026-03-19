# output "kubeconfig" {
#   description = "Kubeconfig for the EKS cluster"
#   value       = module.eks_cluster.kubeconfig
#   sensitive   = true
# }

output "cluster_endpoint" {
  value = module.eks_cluster.cluster_endpoint
}

output "cluster_security_group_id" {
  value = module.eks_cluster.cluster_security_group_id
}

output "cluster_name" {
  value = module.eks_cluster.cluster_name
}

output "cluster_certificate_authority_data" {
  value = module.eks_cluster.cluster_certificate_authority_data
}
