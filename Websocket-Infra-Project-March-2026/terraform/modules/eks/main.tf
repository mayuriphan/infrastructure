module "eks_cluster" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.0.1"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  vpc_id     = var.vpc_id
  subnet_ids = var.subnet_ids

  eks_managed_node_groups = {
    for k, v in var.eks_managed_node_groups :
    k => merge(v, {
      key_name = var.key_name

      additional_security_group_ids = var.sg_id != null ? [var.sg_id] : []
    })
  }

  enable_cluster_creator_admin_permissions = true

  tags = {
    Environment = var.env
    Name        = var.cluster_name
  }
}



# module "eks_cluster" {
#   source  = "terraform-aws-modules/eks/aws"
#   version = "20.0.1"

#   cluster_name    = var.cluster_name
#   cluster_version = var.cluster_version
#   vpc_id          = var.vpc_id
#   subnet_ids      = var.subnet_ids

#   eks_managed_node_groups = var.eks_managed_node_groups

#   enable_cluster_creator_admin_permissions = true

#   tags = {
#     Environment = var.env
#     Name        = var.cluster_name
#   }
# }