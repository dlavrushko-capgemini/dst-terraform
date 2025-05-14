variable "project_id" {
  description = "The ID of the GCP project."
  type        = string
}

variable "role" {
  description = "The IAM role to assign."
  type        = string
  default     = "roles/viewer"
}

variable "member" {
  description = "The member to assign the IAM role to."
  type        = string
  default     = "user:default-user@example.com"
}