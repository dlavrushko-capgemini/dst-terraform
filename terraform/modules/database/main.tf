resource "google_sql_database_instance" "sql_server" {
  name             = "sql-server-instance"
  database_version = "SQLSERVER_2019_STANDARD"
  settings {
    tier = "db-custom-1-3840"
  }
}

resource "google_sql_database_instance" "mysql" {
  name             = "mysql-instance"
  database_version = "MYSQL_8_0"
  settings {
    tier = "db-custom-1-3840"
  }
}

output "sql_server_instance_id" {
  value = google_sql_database_instance.sql_server.id
}

output "mysql_instance_id" {
  value = google_sql_database_instance.mysql.id
}