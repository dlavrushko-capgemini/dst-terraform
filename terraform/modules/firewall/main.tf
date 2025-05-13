resource "google_compute_firewall" "default" {
  name    = "default-firewall"
  network = var.network_name

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]
}