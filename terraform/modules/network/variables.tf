variable "network_name" {
  description = "Name of the network"
  type        = string
}

variable "subnet_names" {
  description = "Names of the subnets"
  type        = list(string)
}