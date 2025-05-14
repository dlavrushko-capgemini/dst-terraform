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

module "firewall" {
  source = "./modules/firewall"
}

module "security" {
  source = "./modules/security"
}

module "database" {
  source = "./modules/database"
}

module "storage" {
  source = "./modules/storage"
}

module "monitoring" {
  source = "./modules/monitoring"
}

module "iam" {
  source = "./modules/iam"
}