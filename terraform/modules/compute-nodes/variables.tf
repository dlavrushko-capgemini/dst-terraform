variable "compute_instance_types" {
  description = "Types of compute instances"
  type        = list(string)
}

variable "network_id" {
  description = "ID of the network"
  type        = string
}

variable "subnet_id" {
  description = "ID of the subnet"
  type        = string
}