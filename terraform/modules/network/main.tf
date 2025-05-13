resource "google_compute_network" "vpc_network" {
  name                    = var.network_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name          = var.subnet_name
  network       = google_compute_network.vpc_network.id
  ip_cidr_range = var.subnet_cidr
}

resource "google_compute_router" "router" {
  name    = var.router_name
  network = google_compute_network.vpc_network.id
}

resource "google_compute_router_nat" "nat" {
  name                       = var.nat_name
  router                     = google_compute_router.router.name
  nat_ip_allocate_option     = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}