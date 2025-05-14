output "network_id" {
  value = google_compute_network.shared_vpc.id
}

output "subnet_ids" {
  value = google_compute_subnetwork.subnets[*].id
}