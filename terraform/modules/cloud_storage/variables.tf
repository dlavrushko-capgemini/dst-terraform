variable "bucket_name" {
  description = "The name of the Cloud Storage bucket."
  type        = string
  default     = "default-bucket"
}

variable "location" {
  description = "The location of the Cloud Storage bucket."
  type        = string
  default     = "US"
}

variable "storage_class" {
  description = "The storage class of the Cloud Storage bucket."
  type        = string
  default     = "STANDARD"
}

variable "labels" {
  description = "A map of labels to assign to the bucket."
  type        = map(string)
  default     = {}
}