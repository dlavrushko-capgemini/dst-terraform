variable "instance_name" {
  description = "The name of the Looker instance."
  type        = string
  default     = "default-looker-instance"
}

variable "project_id" {
  description = "The ID of the GCP project."
  type        = string
}

variable "region" {
  description = "The region to deploy the Looker instance."
  type        = string
  default     = "us-central1"
}