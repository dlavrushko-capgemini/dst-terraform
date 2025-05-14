variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
}

variable "network_name" {
  description = "Name of the network"
  type        = string
  default     = "vnet-shared-01"
}

variable "subnet_names" {
  description = "Names of the subnets"
  type        = list(string)
  default     = ["subnet-01", "subnet-02"]
}

variable "compute_instance_types" {
  description = "Types of compute instances"
  type        = list(string)
  default     = ["n1-standard-1", "n1-standard-2"]
}

variable "database_types" {
  description = "Types of databases"
  type        = list(string)
  default     = ["sqlserver", "mysql"]
}

variable "firewall_rules" {
  description = "Firewall rules"
  type        = list(map(string))
  default     = []
}

variable "security_settings" {
  description = "Security settings"
  type        = map(string)
  default     = {}
}

variable "monitoring_settings" {
  description = "Monitoring settings"
  type        = map(string)
  default     = {}
}

variable "storage_settings" {
  description = "Storage settings"
  type        = map(string)
  default     = {}
}