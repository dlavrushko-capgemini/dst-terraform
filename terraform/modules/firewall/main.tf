resource "google_compute_firewall" "default" {
  name    = "default-firewall"
  network = var.network_id

  allow {
    protocol = "tcp"
    ports    = ["22", "3389"]
  }
}

output "firewall_id" {
  value = google_compute_firewall.default.id
}