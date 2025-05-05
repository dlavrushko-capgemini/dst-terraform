resource "google_compute_network" "private_network" {
  name                    = "private-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name          = "private-subnet"
  network       = google_compute_network.private_network.id
  ip_cidr_range = "10.0.0.0/16"
}