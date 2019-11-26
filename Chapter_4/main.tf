module "autoscaling" {
  source      = "./modules/autoscaling"
  namespace   = var.namespace
  ssh_keypair = var.ssh_keypair

  vpc       = module.networking.vpc
  sg        = module.networking.sg
  db_config = module.database.db_config
}

module "database" {
  source    = "./modules/database"
  namespace = var.namespace
  vpc       = module.networking.vpc #A 
  sg        = module.networking.sg  #A 
}

module "networking" {
  source    = "./modules/networking" #A 
  namespace = var.namespace          #B 
}
