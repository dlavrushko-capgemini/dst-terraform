resource "google_compute_instance" "mysql_source" {
  name         = "mysql-source-instance"
  machine_type = var.mysql_instance_type
  zone         = var.zone_a
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      size  = var.mysql_disk_size
    }
  }
  network_interface {
    network = var.vpc_id
  }
}

resource "google_compute_instance" "mysql_replica" {
  name         = "mysql-replica-instance"
  machine_type = var.mysql_instance_type
  zone         = var.zone_b
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      size  = var.mysql_disk_size
    }
  }
  network_interface {
    network = var.vpc_id
  }
}