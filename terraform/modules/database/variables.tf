variable "vpc_id" {
  description = "The ID of the VPC network"
  type        = string
}

variable "mysql_instance_type" {
  description = "Instance type for MySQL instances"
  type        = string
}

variable "mysql_disk_size" {
  description = "Disk size for MySQL instances"
  type        = number
}

variable "zone_a" {
  description = "Zone for MySQL source instance"
  type        = string
}

variable "zone_b" {
  description = "Zone for MySQL replica instance"
  type        = string
}