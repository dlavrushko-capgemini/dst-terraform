resource "google_sql_database_instance" "default" {
  name             = var.database_instance_name
  database_version = "POSTGRES_13"
  region           = var.region

  settings {
    tier = "db-f1-micro"
  }
}

resource "google_sql_database" "default" {
  name     = "default-database"
  instance = google_sql_database_instance.default.name
}

resource "google_sql_user" "default" {
  name     = "default-user"
  instance = google_sql_database_instance.default.name
  password = "default-password"
}