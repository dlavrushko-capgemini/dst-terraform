resource "google_storage_bucket" "data_lake" {
  name          = var.bucket_name
  location      = var.region
  storage_class = var.storage_class

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = var.lifecycle_age
    }
  }
}