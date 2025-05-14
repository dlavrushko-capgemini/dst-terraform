variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
}

# Add variables from all modules here
variable "network_name" {
  description = "Name of the VPC network"
  type        = string
  default     = "default-network"
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.0.0/24"
}

variable "vm_instance_type" {
  description = "Instance type for VMs"
  type        = string
  default     = "e2-medium"
}

variable "storage_bucket_name" {
  description = "Name of the storage bucket"
  type        = string
  default     = "default-bucket"
}

variable "database_instance_name" {
  description = "Name of the database instance"
  type        = string
  default     = "default-db-instance"
}

variable "dns_zone_name" {
  description = "Name of the DNS zone"
  type        = string
  default     = "default-dns-zone"
}

variable "firewall_rules" {
  description = "Firewall rules configuration"
  type        = map(any)
  default     = {}
}

variable "monitoring_alert_name" {
  description = "Name of the monitoring alert"
  type        = string
  default     = "default-alert"
}