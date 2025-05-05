variable "network_name" {
  description = "The name of the VPC network"
  type        = string
}

variable "subnet_cidr_ranges" {
  description = "CIDR ranges for the subnets"
  type        = list(string)
}

variable "zones" {
  description = "The GCP zones to deploy resources"
  type        = list(string)
}

variable "region" {
  description = "The GCP region to deploy resources"
  type        = string
}