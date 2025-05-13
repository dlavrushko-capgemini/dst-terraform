variable "dataset_id" {
  description = "ID of the BigQuery dataset"
  type        = string
  default     = "my_data_warehouse"
}

variable "table_id" {
  description = "ID of the BigQuery table"
  type        = string
  default     = "analysis_table"
}

variable "schema" {
  description = "Schema of the BigQuery table"
  type        = string
  default     = "[]"
}