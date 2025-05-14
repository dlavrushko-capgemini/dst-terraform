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

module "cloud_sql" {
  source = "./modules/cloud_sql"
}

module "bigquery" {
  source = "./modules/bigquery"
}

module "cloud_storage" {
  source = "./modules/cloud_storage"
}

module "firestore" {
  source = "./modules/firestore"
}

module "dataflow" {
  source = "./modules/dataflow"
}

module "looker" {
  source = "./modules/looker"
}

module "iam" {
  source = "./modules/iam"
}