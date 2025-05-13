output "network_id" {
  value = google_compute_network.vpc_network.id
}

output "subnet_id" {
  value = google_compute_subnetwork.subnet.id
}

output "router_id" {
  value = google_compute_router.router.id
}

output "nat_id" {
  value = google_compute_router_nat.nat.id
}