variable "dataflow_job_name" {
  description = "Name of the Dataflow job"
  type        = string
}

variable "template_gcs_path" {
  description = "GCS path to the Dataflow template"
  type        = string
}

variable "temp_gcs_location" {
  description = "Temporary GCS location for Dataflow"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
}

variable "input_path" {
  description = "Input path for the Dataflow job"
  type        = string
}

variable "output_path" {
  description = "Output path for the Dataflow job"
  type        = string
}