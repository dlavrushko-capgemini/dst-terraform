variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region to deploy resources"
  type        = string
  default     = "us-central1"
}

variable "zones" {
  description = "The GCP zones to deploy resources"
  type        = list(string)
  default     = ["us-central1-a", "us-central1-b", "us-central1-c"]
}

variable "network_name" {
  description = "The name of the VPC network"
  type        = string
  default     = "my-vpc-network"
}

variable "subnet_cidr_ranges" {
  description = "CIDR ranges for the subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "firewall_rules" {
  description = "Firewall rules configuration"
  type        = list(object({
    name        = string
    direction   = string
    priority    = number
    action      = string
    source_tags = list(string)
    target_tags = list(string)
    source_ranges = list(string)
    target_ranges = list(string)
    ports       = list(string)
  }))
  default = []
}

variable "compute_instance_types" {
  description = "Instance types for compute nodes"
  type        = map(string)
  default     = {
    proxysql   = "e2-medium",
    mysql      = "e2-medium",
    orchestrator = "e2-medium",
    prometheus = "e2-medium",
    grafana    = "e2-medium"
  }
}

variable "disk_sizes" {
  description = "Disk sizes for compute nodes"
  type        = map(number)
  default     = {
    proxysql   = 50,
    mysql      = 100,
    orchestrator = 50,
    prometheus = 50,
    grafana    = 50
  }
}