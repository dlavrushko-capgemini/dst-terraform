resource "google_storage_bucket" "cloud_storage" {
  name          = var.cloud_storage_config["name"]
  location      = var.cloud_storage_config["location"]
  storage_class = var.cloud_storage_config["storage_class"]

  lifecycle_rule {
    action {
      type = "Delete"
    }

    condition {
      age = var.cloud_storage_config["lifecycle_age"]
    }
  }
}