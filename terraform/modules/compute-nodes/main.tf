resource "google_compute_instance" "windows_jump_box" {
  name         = "windows-jump-box"
  machine_type = var.compute_instance_types[0]
  boot_disk {
    initialize_params {
      image = "windows-server-2019"
    }
  }
  network_interface {
    network = var.network_id
    subnetwork = var.subnet_id
  }
}

resource "google_compute_instance" "linux_jump_box" {
  name         = "linux-jump-box"
  machine_type = var.compute_instance_types[1]
  boot_disk {
    initialize_params {
      image = "ubuntu-2004-lts"
    }
  }
  network_interface {
    network = var.network_id
    subnetwork = var.subnet_id
  }
}

output "windows_jump_box_id" {
  value = google_compute_instance.windows_jump_box.id
}

output "linux_jump_box_id" {
  value = google_compute_instance.linux_jump_box.id
}