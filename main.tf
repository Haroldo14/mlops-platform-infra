module "vpc" {

  source = "./modules/vpc"

  project_name = var.project_name
  vpc_cidr     = var.vpc_cidr

}

module "subnets" {

  source = "./modules/subnets"

  vpc_id       = module.vpc.vpc_id
  project_name = var.project_name

}

module "igw" {

  source = "./modules/igw"

  vpc_id       = module.vpc.vpc_id
  project_name = var.project_name

}

module "route_tables" {

  source = "./modules/route-tables"

  vpc_id = module.vpc.vpc_id

  public_subnets  = module.subnets.public_subnets
  private_subnets = module.subnets.private_subnets
  data_subnets    = module.subnets.data_subnets

  igw_id = module.igw.igw_id

}

