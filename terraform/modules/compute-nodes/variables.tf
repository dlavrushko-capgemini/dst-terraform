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

variable "network_id" {
  description = "ID of the private network"
  type        = string
}

variable "proxysql_zones" {
  description = "List of zones for ProxySQL instances"
  type        = list(string)
  default     = ["us-central1-a", "us-central1-c"]
}