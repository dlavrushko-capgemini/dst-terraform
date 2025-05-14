variable "network_name" {
  description = "The name of the network."
  type        = string
  default     = "private-network"
}

variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
  default     = "private-subnet"
}

variable "subnet_cidr" {
  description = "The CIDR range of the subnet."
  type        = string
  default     = "10.0.0.0/24"
}

variable "region" {
  description = "The GCP region to deploy the network."
  type        = string
  default     = "us-central1"
}