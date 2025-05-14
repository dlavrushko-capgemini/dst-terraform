resource "google_compute_network" "shared_vpc" {
  name                    = var.network_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnets" {
  count                  = length(var.subnet_names)
  name                   = var.subnet_names[count.index]
  network                = google_compute_network.shared_vpc.id
  ip_cidr_range          = "10.0.${count.index}.0/24"
}

output "network_id" {
  value = google_compute_network.shared_vpc.id
}

output "subnet_ids" {
  value = google_compute_subnetwork.subnets[*].id
}