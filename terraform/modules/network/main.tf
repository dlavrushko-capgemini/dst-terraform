resource "google_compute_network" "vpc_network" {
  name                    = var.network_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  count                  = length(var.zones)
  name                   = "${var.network_name}-subnet-${var.zones[count.index]}"
  ip_cidr_range          = var.subnet_cidr_ranges[count.index]
  region                 = var.region
  network                = google_compute_network.vpc_network.id
}
