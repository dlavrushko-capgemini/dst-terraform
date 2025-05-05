variable "network_name" {
  description = "Name of the private network"
  type        = string
  default     = "private-network"
}

variable "subnet_name" {
  description = "Name of the private subnet"
  type        = string
  default     = "private-subnet"
}

variable "subnet_cidr" {
  description = "CIDR range for the private subnet"
  type        = string
  default     = "10.0.0.0/16"
}