resource "google_compute_instance" "mysql_source" {
  name         = "mysql-source"
  machine_type = "n1-standard-1"
  zone         = var.zone_a

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = var.network_id
  }
}

resource "google_compute_instance" "mysql_replica" {
  name         = "mysql-replica"
  machine_type = "n1-standard-1"
  zone         = var.zone_b

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = var.network_id
  }
}

resource "google_compute_instance" "proxysql" {
  count        = 2
  name         = "proxysql-${count.index}"
  machine_type = "n1-standard-1"
  zone         = var.proxysql_zones[count.index]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = var.network_id
  }
}