resource "google_compute_network" "shared_services" {
  name                    = var.vpc_shared_services_name
  auto_create_subnetworks = false
}

resource "google_compute_network" "application" {
  name                    = var.vpc_application_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "shared_services_subnet" {
  name          = "shared-services-subnet"
  ip_cidr_range = var.subnet_shared_services[0]
  network       = google_compute_network.shared_services.id
}

resource "google_compute_subnetwork" "application_subnet" {
  name          = "application-subnet"
  ip_cidr_range = var.subnet_application[0]
  network       = google_compute_network.application.id
}

resource "google_compute_network_peering" "vpc_peering" {
  name         = "shared-services-application-peering"
  network      = google_compute_network.shared_services.name
  peer_network = google_compute_network.application.name
}