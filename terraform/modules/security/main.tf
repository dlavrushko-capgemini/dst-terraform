resource "google_compute_firewall" "firewall" {
  name    = "default-firewall"
  network = var.network_id

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
}