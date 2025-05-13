variable "bucket_name" {
  description = "Name of the Cloud Storage bucket"
  type        = string
  default     = "my-data-lake-bucket"
}

variable "region" {
  description = "Region where the bucket will be created"
  type        = string
  default     = "us-central1"
}

variable "storage_class" {
  description = "Storage class of the bucket"
  type        = string
  default     = "STANDARD"
}

variable "lifecycle_age" {
  description = "Age in days after which objects in the bucket will be deleted"
  type        = number
  default     = 30
}