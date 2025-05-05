variable "vpc_id" {
  description = "The ID of the VPC network"
  type        = string
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
}