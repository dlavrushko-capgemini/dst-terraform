output "sql_server_instance_id" {
  value = google_sql_database_instance.sql_server.id
}

output "mysql_instance_id" {
  value = google_sql_database_instance.mysql.id
}