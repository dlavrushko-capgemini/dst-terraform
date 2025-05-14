resource "google_dataflow_job" "default" {
  name            = var.job_name
  template_gcs_path = var.template_gcs_path
  region          = var.region
  parameters      = var.parameters
}