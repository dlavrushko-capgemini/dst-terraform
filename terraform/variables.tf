variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "The GCP zone"
  type        = string
  default     = "us-central1-a"
}

variable "network_name" {
  description = "Name of the VPC network"
  type        = string
  default     = "my-vpc-network"
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
  default     = "my-subnet"
}

variable "subnet_cidr" {
  description = "CIDR range for the subnet"
  type        = string
  default     = "10.0.0.0/24"
}

variable "database_instance_name" {
  description = "Name of the Cloud SQL instance"
  type        = string
  default     = "my-database-instance"
}

variable "firewall_rules" {
  description = "Firewall rules configuration"
  type        = list(map(string))
  default     = []
}

variable "security_policies" {
  description = "Security policies configuration"
  type        = list(map(string))
  default     = []
}

variable "compute_instance_type" {
  description = "Type of compute instances"
  type        = string
  default     = "e2-medium"
}

variable "monitoring_dashboard_name" {
  description = "Name of the monitoring dashboard"
  type        = string
  default     = "my-monitoring-dashboard"
}

variable "logging_sink_name" {
  description = "Name of the logging sink"
  type        = string
  default     = "my-logging-sink"
}

variable "dataflow_job_name" {
  description = "Name of the Dataflow job"
  type        = string
  default     = "my-dataflow-job"
}

variable "bigquery_dataset_name" {
  description = "Name of the BigQuery dataset"
  type        = string
  default     = "my-bigquery-dataset"
}

variable "cloud_storage_bucket_name" {
  description = "Name of the Cloud Storage bucket"
  type        = string
  default     = "my-cloud-storage-bucket"
}

variable "firestore_collection_name" {
  description = "Name of the Firestore collection"
  type        = string
  default     = "my-firestore-collection"
}

variable "looker_model_name" {
  description = "Name of the Looker model"
  type        = string
  default     = "my-looker-model"
}

variable "looker_studio_report_name" {
  description = "Name of the Looker Studio report"
  type        = string
  default     = "my-looker-studio-report"
}