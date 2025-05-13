resource "google_logging_project_sink" "default" {
  name        = var.logging_sink_name
  destination = "storage.googleapis.com/${var.logging_bucket_name}"
  filter      = "severity >= ERROR"

  lifecycle {
    prevent_destroy = true
  }
}