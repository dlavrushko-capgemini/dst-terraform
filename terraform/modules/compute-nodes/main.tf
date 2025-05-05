resource "google_compute_instance" "compute_nodes" {
  count         = length(keys(var.instance_types))
  name          = "${keys(var.instance_types)[count.index]}-instance"
  machine_type  = var.instance_types[keys(var.instance_types)[count.index]]
  zone          = var.zones[count.index % length(var.zones)]
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      size  = var.disk_sizes[keys(var.instance_types)[count.index]]
    }
  }
  network_interface {
    network = var.vpc_id
  }
}