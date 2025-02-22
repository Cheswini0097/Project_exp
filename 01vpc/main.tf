module "vpc" {
    source = "git::https://github.com/Cheswini0097/terraform-vpc-module"
    vpc_cidr= var.vpc_cidr
    project_name  = var.project_name
    public_subnet_cidrs = var.public_subnet_cidrs  
    private_subnet_cidrs = var.private_subnet_cidrs
    database_subnet_cidrs = var.database_subnet_cidrs
    is_peering_required= var.is_peering_required

    

    
  
}