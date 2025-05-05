resource "google_compute_instance" "orchestrator" {
  name         = "orchestrator"
  machine_type = "n1-standard-1"
  zone         = var.zone_c

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = var.network_id
  }
}