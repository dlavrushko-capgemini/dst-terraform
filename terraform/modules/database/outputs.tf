output "mysql_instance_id" {
  description = "The ID of the Cloud SQL MySQL instance"
  value       = google_sql_database_instance.mysql_instance.id
}

output "sql_server_instance_id" {
  description = "The ID of the SQL Server instance"
  value       = google_compute_instance.sql_server_instance.id
}