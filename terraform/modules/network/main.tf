resource "google_compute_network" "vpc_network" {
  name = var.network_name
}

resource "google_compute_subnetwork" "subnet" {
  name          = "subnet-1"
  ip_cidr_range = var.subnet_cidr
  network       = google_compute_network.vpc_network.id
}