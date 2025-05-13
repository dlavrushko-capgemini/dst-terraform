resource "google_compute_instance" "default" {
  name         = "default-instance"
  machine_type = var.compute_instance_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = var.network_name
    access_config {
    }
  }
}