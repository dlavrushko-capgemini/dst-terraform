resource "google_compute_firewall" "allow_mysql" {
  name    = "allow-mysql"
  network = var.network_id

  allow {
    protocol = "tcp"
    ports    = ["3306"]
  }

  source_ranges = ["10.0.0.0/16"]
}

resource "google_compute_firewall" "allow_proxysql" {
  name    = "allow-proxysql"
  network = var.network_id

  allow {
    protocol = "tcp"
    ports    = ["6032"]
  }

  source_ranges = ["10.0.0.0/16"]
}