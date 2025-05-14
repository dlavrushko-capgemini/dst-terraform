output "shared_services_vpc_id" {
  description = "The ID of the Shared Services VPC"
  value       = google_compute_network.shared_services.id
}

output "application_vpc_id" {
  description = "The ID of the Application VPC"
  value       = google_compute_network.application.id
}

output "shared_services_subnet_id" {
  description = "The ID of the Shared Services subnet"
  value       = google_compute_subnetwork.shared_services_subnet.id
}

output "application_subnet_id" {
  description = "The ID of the Application subnet"
  value       = google_compute_subnetwork.application_subnet.id
}

output "vpc_peering_id" {
  description = "The ID of the VPC peering connection"
  value       = google_compute_network_peering.vpc_peering.id
}