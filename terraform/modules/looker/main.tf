resource "google_looker_instance" "default" {
  name     = var.instance_name
  project  = var.project_id
  region   = var.region
}