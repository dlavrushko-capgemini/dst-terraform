terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }

  required_version = ">= 1.3.0"
}

provider "google" {
  project = var.project_id
  region  = var.region
}

module "network" {
  source = "./modules/network"
}

module "firewall" {
  source = "./modules/firewall"
  vpc_id = module.network.vpc_id
}

module "compute_nodes" {
  source = "./modules/compute-nodes"
  vpc_id = module.network.vpc_id
}

module "database" {
  source = "./modules/database"
  vpc_id = module.network.vpc_id
}

module "monitoring" {
  source = "./modules/monitoring"
  vpc_id = module.network.vpc_id
}
