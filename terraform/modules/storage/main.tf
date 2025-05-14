resource "google_filestore_instance" "default" {
  name       = "filestore-instance"
  tier       = "STANDARD"
  capacity_gb = 1024
}

output "filestore_instance_id" {
  value = google_filestore_instance.default.id
}