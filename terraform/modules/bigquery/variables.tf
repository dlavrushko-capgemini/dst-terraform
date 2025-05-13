variable "bigquery_dataset_name" {
  description = "Name of the BigQuery dataset"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
}

variable "reader_email" {
  description = "Email of the user with read access"
  type        = string
}