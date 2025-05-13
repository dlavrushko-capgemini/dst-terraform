variable "alert_name" {
  description = "Name of the alert policy"
  type        = string
  default     = "High CPU Usage"
}

variable "filter" {
  description = "Filter for the alert condition"
  type        = string
  default     = "metric.type=compute.googleapis.com/instance/cpu/utilization"
}

variable "threshold_value" {
  description = "Threshold value for the alert"
  type        = number
  default     = 0.8
}