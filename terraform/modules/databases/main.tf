resource "google_sql_database_instance" "sql_instance" {
  name             = var.database_instance_name
  database_version = "MYSQL_8_0"
  region           = var.region
  settings {
    tier = "db-n1-standard-1"
  }
}