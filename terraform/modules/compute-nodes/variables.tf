variable "bastion_host_config" {
  description = "Configuration for the bastion host"
  type        = map(any)
}

variable "jump_boxes_config" {
  description = "Configuration for jump boxes"
  type        = map(any)
}