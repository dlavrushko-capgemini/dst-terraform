variable "db_instance_name" {
  description = "The name of the Cloud SQL instance"
  type        = string
  default     = "my-sql-instance"
}

variable "db_version" {
  description = "The database version for the Cloud SQL instance"
  type        = string
  default     = "POSTGRES_13"
}

variable "region" {
  description = "The region where the Cloud SQL instance will be created"
  type        = string
  default     = "us-central1"
}

variable "db_tier" {
  description = "The machine type for the Cloud SQL instance"
  type        = string
  default     = "db-f1-micro"
}

variable "db_name" {
  description = "The name of the database to create in the Cloud SQL instance"
  type        = string
  default     = "my_database"
}

variable "db_user_name" {
  description = "The username for the database user"
  type        = string
  default     = "admin"
}

variable "db_user_password" {
  description = "The password for the database user"
  type        = string
  default     = "password123"
}