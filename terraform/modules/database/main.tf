resource "google_sql_database_instance" "db_instance" {
  name             = var.db_instance_name
  database_version = var.db_version
  region           = var.region

  settings {
    tier = var.db_tier
  }
}

resource "google_sql_database" "database" {
  name     = var.db_name
  instance = google_sql_database_instance.db_instance.name
}

resource "google_sql_user" "db_user" {
  name     = var.db_user_name
  instance = google_sql_database_instance.db_instance.name
  password = var.db_user_password
}