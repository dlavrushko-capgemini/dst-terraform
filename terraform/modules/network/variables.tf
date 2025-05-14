variable "vpc_shared_services_name" {
  description = "Name of the Shared Services VPC"
  type        = string
}

variable "vpc_application_name" {
  description = "Name of the Application VPC"
  type        = string
}

variable "subnet_shared_services" {
  description = "Subnets for Shared Services VPC"
  type        = list(string)
}

variable "subnet_application" {
  description = "Subnets for Application VPC"
  type        = list(string)
}