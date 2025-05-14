resource "google_storage_bucket" "default" {
  name          = var.bucket_name
  location      = var.location
  storage_class = var.storage_class

  labels = var.labels
}