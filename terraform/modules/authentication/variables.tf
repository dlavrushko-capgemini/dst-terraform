variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "role" {
  description = "IAM role to assign"
  type        = string
  default     = "roles/viewer"
}

variable "member" {
  description = "IAM member to assign the role to"
  type        = string
  default     = "user:example@example.com"
}