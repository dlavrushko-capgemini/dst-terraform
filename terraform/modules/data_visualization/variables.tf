variable "instance_name" {
  description = "Name of the Looker instance"
  type        = string
  default     = "my-looker-instance"
}

variable "region" {
  description = "Region where the Looker instance will be created"
  type        = string
  default     = "us-central1"
}

variable "settings" {
  description = "Settings for the Looker instance"
  type        = map(string)
  default     = {}
}