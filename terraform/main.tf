provider "google" {
  project = var.project_id
  region  = var.region
}

module "network" {
  source = "./modules/network"
}

module "compute_nodes" {
  source = "./modules/compute-nodes"
}

module "database" {
  source = "./modules/database"
}

module "firewall" {
  source = "./modules/firewall"
}

module "security" {
  source = "./modules/security"
}

module "monitoring" {
  source = "./modules/monitoring"
}

module "storage" {
  source = "./modules/storage"
}