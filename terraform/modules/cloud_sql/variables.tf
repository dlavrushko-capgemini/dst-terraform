variable "instance_name" {
  description = "The name of the Cloud SQL instance."
  type        = string
  default     = "default-sql-instance"
}

variable "database_version" {
  description = "The version of the database (e.g., MYSQL_8_0, POSTGRES_13)."
  type        = string
  default     = "MYSQL_8_0"
}

variable "region" {
  description = "The GCP region to deploy the Cloud SQL instance."
  type        = string
  default     = "us-central1"
}

variable "tier" {
  description = "The machine type to use for the Cloud SQL instance."
  type        = string
  default     = "db-f1-micro"
}

variable "database_name" {
  description = "The name of the database."
  type        = string
  default     = "default-database"
}

variable "charset" {
  description = "The charset for the database."
  type        = string
  default     = "UTF8"
}

variable "collation" {
  description = "The collation for the database."
  type        = string
  default     = "en_US.UTF8"
}