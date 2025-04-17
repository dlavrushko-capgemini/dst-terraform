variable "project" {
  description = "The GCP project ID"
  type        = string
}

provider "google" {
  project = var.project  
  region  = "us-central1"
  zone    = "us-central1-c"
}