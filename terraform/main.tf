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

module "database" {
  source = "./modules/database"
}

module "firewall" {
  source = "./modules/firewall"
}

module "security" {
  source = "./modules/security"
}

module "compute_nodes" {
  source = "./modules/compute-nodes"
}

module "monitoring" {
  source = "./modules/monitoring"
}

module "logging" {
  source = "./modules/logging"
}

module "dataflow" {
  source = "./modules/dataflow"
}

module "bigquery" {
  source = "./modules/bigquery"
}

module "cloud_storage" {
  source = "./modules/cloud-storage"
}

module "firestore" {
  source = "./modules/firestore"
}

module "looker" {
  source = "./modules/looker"
}

module "looker_studio" {
  source = "./modules/looker-studio"
}