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

module "data_lake" {
  source = "./modules/data_lake"
}

module "data_orchestration" {
  source = "./modules/data_orchestration"
}

module "data_warehouse" {
  source = "./modules/data_warehouse"
}

module "data_analysis" {
  source = "./modules/data_analysis"
}

module "data_visualization" {
  source = "./modules/data_visualization"
}

module "authentication" {
  source = "./modules/authentication"
}

module "monitoring" {
  source = "./modules/monitoring"
}

module "security" {
  source = "./modules/security"
}