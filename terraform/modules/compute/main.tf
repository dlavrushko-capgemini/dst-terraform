resource "google_compute_instance" "windows_vm" {
  name         = "windows-jump-box"
  machine_type = var.vm_instance_type
  boot_disk {
    initialize_params {
      image = "windows-server-2019"
    }
  }
  network_interface {
    network = var.network_id
  }
}

resource "google_compute_instance" "linux_vm" {
  name         = "linux-jump-box"
  machine_type = var.vm_instance_type
  boot_disk {
    initialize_params {
      image = "ubuntu-2004-lts"
    }
  }
  network_interface {
    network = var.network_id
  }
}