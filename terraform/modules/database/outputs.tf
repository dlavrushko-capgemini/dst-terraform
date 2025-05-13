output "database_instance" {
  value = google_sql_database_instance.db_instance.name
}

output "database_name" {
  value = google_sql_database.database.name
}

output "database_user" {
  value = google_sql_user.db_user.name
}