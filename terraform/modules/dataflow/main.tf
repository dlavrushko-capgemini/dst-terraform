resource "google_dataflow_job" "default" {
  name             = var.dataflow_job_name
  template_gcs_path = var.template_gcs_path
  temp_gcs_location = var.temp_gcs_location
  region           = var.region

  parameters = {
    input  = var.input_path
    output = var.output_path
  }
}