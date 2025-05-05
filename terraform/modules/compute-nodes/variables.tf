variable "vpc_id" {
  description = "The ID of the VPC network"
  type        = string
}

variable "instance_types" {
  description = "Instance types for compute nodes"
  type        = map(string)
}

variable "disk_sizes" {
  description = "Disk sizes for compute nodes"
  type        = map(number)
}

variable "zones" {
  description = "The GCP zones to deploy resources"
  type        = list(string)
}