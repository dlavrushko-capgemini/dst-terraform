resource "google_sql_database_instance" "mysql_instance" {
  name             = var.cloud_sql_config["name"]
  database_version = "MYSQL_8_0"
  region           = var.cloud_sql_config["region"]

  settings {
    tier = var.cloud_sql_config["tier"]
  }
}

resource "google_compute_instance" "sql_server_instance" {
  name         = var.sql_server_config["name"]
  machine_type = var.sql_server_config["machine_type"]
  zone         = var.sql_server_config["zone"]

  boot_disk {
    initialize_params {
      image = var.sql_server_config["image"]
    }
  }

  network_interface {
    network    = var.sql_server_config["network"]
    subnetwork = var.sql_server_config["subnetwork"]
  }
}