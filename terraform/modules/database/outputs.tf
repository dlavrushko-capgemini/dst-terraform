output "database_instance_name" {
  value = google_sql_database_instance.default.name
}

output "database_name" {
  value = google_sql_database.default.name
}

output "database_user" {
  value = google_sql_user.default.name
}