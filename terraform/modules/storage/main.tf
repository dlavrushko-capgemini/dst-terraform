resource "google_storage_bucket" "bucket" {
  name     = var.storage_bucket_name
  location = var.region
}