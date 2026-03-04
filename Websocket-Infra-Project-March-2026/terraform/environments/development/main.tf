module "vpc" {
  source               = "../../modules/vpc"
  cidr                 = var.vpc_cidr
  public_subnet_cidr   = var.public_subnet_cidr
  env                  = var.env
}

module "sg" {
  source   = "../../modules/security-group"
  vpc_id   = module.vpc.vpc_id
  my_ip    = var.my_ip
  env      = var.env
}

module "iam" {
  source = "../../modules/iam"
  env    = var.env
}

module "ecr" {
  source = "../../modules/ecr"
  env    = var.env
}

module "ec2_k8" {
  source           = "../../modules/ec2"
  ami              = var.ami
  key_name         = var.key_name
  sg_id            = module.sg.sg_id
  subnet_id        = module.vpc.public_subnet_id
  instance_profile = module.iam.instance_profile
  env              = var.env
  name             = "${var.env}-k8-instance"
  role             = "k8"
}

module "ec2_monitoring" {
  source           = "../../modules/ec2"
  ami              = var.ami
  key_name         = var.key_name
  sg_id            = module.sg.sg_id
  subnet_id        = module.vpc.public_subnet_id
  instance_profile = module.iam.instance_profile
  env              = var.env
  name             = "${var.env}-monitoring-instance"
  role             = "monitoring"
}

module "ec2_db" {
  source           = "../../modules/ec2"
  ami              = var.ami
  key_name         = var.key_name
  sg_id            = module.sg.sg_id
  subnet_id        = module.vpc.public_subnet_id
  instance_profile = module.iam.instance_profile
  env              = var.env
  name             = "${var.env}-influxdb-instance"
  role           = "db"
}

# module "autoscaling" {
#   source             = "../../modules/autoscaling"
#   launch_template_id = module.ec2.launch_template_id
#   subnet_id          = module.vpc.public_subnet_id
#   env                = var.env
# }
