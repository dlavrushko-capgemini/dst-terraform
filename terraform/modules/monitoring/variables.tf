variable "vpc_id" {
  description = "The ID of the VPC network"
  type        = string
}

variable "prometheus_instance_type" {
  description = "Instance type for Prometheus"
  type        = string
}

variable "grafana_instance_type" {
  description = "Instance type for Grafana"
  type        = string
}

variable "prometheus_disk_size" {
  description = "Disk size for Prometheus"
  type        = number
}

variable "grafana_disk_size" {
  description = "Disk size for Grafana"
  type        = number
}

variable "zone_c" {
  description = "Zone for monitoring instances"
  type        = string
}