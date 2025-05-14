resource "google_compute_instance" "bastion_host" {
  name         = var.bastion_host_config["name"]
  machine_type = var.bastion_host_config["machine_type"]
  zone         = var.bastion_host_config["zone"]

  boot_disk {
    initialize_params {
      image = var.bastion_host_config["image"]
    }
  }

  network_interface {
    network    = var.bastion_host_config["network"]
    subnetwork = var.bastion_host_config["subnetwork"]
  }
}

resource "google_compute_instance" "windows_jump_box" {
  name         = var.jump_boxes_config["windows"]["name"]
  machine_type = var.jump_boxes_config["windows"]["machine_type"]
  zone         = var.jump_boxes_config["windows"]["zone"]

  boot_disk {
    initialize_params {
      image = var.jump_boxes_config["windows"]["image"]
    }
  }

  network_interface {
    network    = var.jump_boxes_config["windows"]["network"]
    subnetwork = var.jump_boxes_config["windows"]["subnetwork"]
  }
}

resource "google_compute_instance" "linux_jump_box" {
  name         = var.jump_boxes_config["linux"]["name"]
  machine_type = var.jump_boxes_config["linux"]["machine_type"]
  zone         = var.jump_boxes_config["linux"]["zone"]

  boot_disk {
    initialize_params {
      image = var.jump_boxes_config["linux"]["image"]
    }
  }

  network_interface {
    network    = var.jump_boxes_config["linux"]["network"]
    subnetwork = var.jump_boxes_config["linux"]["subnetwork"]
  }
}