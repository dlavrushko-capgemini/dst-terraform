resource "google_storage_bucket" "default" {
  name     = var.cloud_storage_bucket_name
  location = var.region
  storage_class = "STANDARD"

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 30
    }
  }
}