variable "network_name" {
  description = "Name of the VPC network"
  type        = string
  default     = "my-vpc-network"
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
  default     = "my-subnet"
}

variable "subnet_cidr" {
  description = "CIDR range for the subnet"
  type        = string
  default     = "10.0.0.0/24"
}

variable "router_name" {
  description = "Name of the router"
  type        = string
  default     = "my-router"
}

variable "nat_name" {
  description = "Name of the NAT configuration"
  type        = string
  default     = "my-nat"
}