variable "dataset_id" {
  description = "The ID of the BigQuery dataset."
  type        = string
  default     = "default_dataset"
}

variable "project_id" {
  description = "The ID of the GCP project."
  type        = string
}

variable "location" {
  description = "The location of the BigQuery dataset."
  type        = string
  default     = "US"
}

variable "labels" {
  description = "A map of labels to assign to the dataset."
  type        = map(string)
  default     = {}
}