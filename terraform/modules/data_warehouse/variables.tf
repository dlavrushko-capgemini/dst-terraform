variable "dataset_id" {
  description = "ID of the BigQuery dataset"
  type        = string
  default     = "my_data_warehouse"
}

variable "region" {
  description = "Region where the BigQuery dataset will be created"
  type        = string
  default     = "us-central1"
}

variable "reader_email" {
  description = "Email of the user with read access"
  type        = string
  default     = "reader@example.com"
}

variable "writer_email" {
  description = "Email of the user with write access"
  type        = string
  default     = "writer@example.com"
}