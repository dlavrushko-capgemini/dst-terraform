variable "cloud_sql_config" {
  description = "Configuration for Cloud SQL instances"
  type        = map(any)
}

variable "sql_server_config" {
  description = "Configuration for SQL Server instances"
  type        = map(any)
}