variable "pipeline_name" {
  description = "Name of the Dataflow pipeline"
  type        = string
  default     = "my-dataflow-pipeline"
}

variable "template_gcs_path" {
  description = "GCS path to the Dataflow template"
  type        = string
  default     = "gs://my-templates/template.json"
}

variable "region" {
  description = "Region where the Dataflow pipeline will run"
  type        = string
  default     = "us-central1"
}

variable "input_path" {
  description = "GCS path for input data"
  type        = string
  default     = "gs://my-input-data"
}

variable "output_path" {
  description = "GCS path for output data"
  type        = string
  default     = "gs://my-output-data"
}