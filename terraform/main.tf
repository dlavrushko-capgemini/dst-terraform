terraform {
  required_version = ">= 1.3.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

module "network" {
  source = "./modules/network"
}

module "compute" {
  source = "./modules/compute"
}

module "storage" {
  source = "./modules/storage"
}

module "databases" {
  source = "./modules/databases"
}

module "identity" {
  source = "./modules/identity"
}

module "security" {
  source = "./modules/security"
}

module "monitoring" {
  source = "./modules/monitoring"
}