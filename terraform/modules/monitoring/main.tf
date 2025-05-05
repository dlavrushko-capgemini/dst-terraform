resource "google_compute_instance" "prometheus" {
  name         = "prometheus-instance"
  machine_type = var.prometheus_instance_type
  zone         = var.zone_c
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      size  = var.prometheus_disk_size
    }
  }
  network_interface {
    network = var.vpc_id
  }
}

resource "google_compute_instance" "grafana" {
  name         = "grafana-instance"
  machine_type = var.grafana_instance_type
  zone         = var.zone_c
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      size  = var.grafana_disk_size
    }
  }
  network_interface {
    network = var.vpc_id
  }
}