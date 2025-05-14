variable "job_name" {
  description = "The name of the Dataflow job."
  type        = string
  default     = "default-dataflow-job"
}

variable "template_gcs_path" {
  description = "The GCS path to the Dataflow job template."
  type        = string
  default     = "gs://default-template-path"
}

variable "region" {
  description = "The region to deploy the Dataflow job."
  type        = string
  default     = "us-central1"
}

variable "parameters" {
  description = "The parameters for the Dataflow job."
  type        = map(string)
  default     = {}
}