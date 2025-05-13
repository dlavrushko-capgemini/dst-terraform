resource "google_looker_instance" "visualization" {
  name     = var.instance_name
  region   = var.region
  settings = var.settings
}