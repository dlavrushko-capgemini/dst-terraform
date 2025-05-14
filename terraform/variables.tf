variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
}

variable "vpc_shared_services_name" {
  description = "Name of the Shared Services VPC"
  type        = string
  default     = "shared-services-vpc"
}

variable "vpc_application_name" {
  description = "Name of the Application VPC"
  type        = string
  default     = "application-vpc"
}

variable "subnet_shared_services" {
  description = "Subnets for Shared Services VPC"
  type        = list(string)
  default     = ["10.0.0.0/24"]
}

variable "subnet_application" {
  description = "Subnets for Application VPC"
  type        = list(string)
  default     = ["10.1.0.0/24"]
}

variable "firewall_rules" {
  description = "Firewall rules configuration"
  type        = map(any)
  default     = {}
}

variable "bastion_host_config" {
  description = "Configuration for the bastion host"
  type        = map(any)
  default     = {}
}

variable "jump_boxes_config" {
  description = "Configuration for jump boxes"
  type        = map(any)
  default     = {}
}

variable "cloud_sql_config" {
  description = "Configuration for Cloud SQL instances"
  type        = map(any)
  default     = {}
}

variable "sql_server_config" {
  description = "Configuration for SQL Server instances"
  type        = map(any)
  default     = {}
}

variable "cloud_storage_config" {
  description = "Configuration for Cloud Storage buckets"
  type        = map(any)
  default     = {}
}

variable "cloud_dns_config" {
  description = "Configuration for Cloud DNS"
  type        = map(any)
  default     = {}
}

variable "cloud_kms_config" {
  description = "Configuration for Cloud KMS"
  type        = map(any)
  default     = {}
}

variable "monitoring_config" {
  description = "Configuration for Cloud Monitoring and Logging"
  type        = map(any)
  default     = {}
}