variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
}

variable "zone_a" {
  description = "Zone A for multi-zone deployment"
  type        = string
}

variable "zone_b" {
  description = "Zone B for multi-zone deployment"
  type        = string
}

variable "zone_c" {
  description = "Zone C for multi-zone deployment"
  type        = string
}