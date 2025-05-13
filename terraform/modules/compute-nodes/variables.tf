variable "compute_instance_type" {
  description = "Type of compute instances"
  type        = string
}

variable "zone" {
  description = "The GCP zone"
  type        = string
}

variable "network_name" {
  description = "Name of the VPC network"
  type        = string
}