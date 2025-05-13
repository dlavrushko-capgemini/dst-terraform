resource "google_dataflow_job" "dataflow_pipeline" {
  name            = var.pipeline_name
  template_gcs_path = var.template_gcs_path
  region          = var.region

  parameters = {
    input  = var.input_path
    output = var.output_path
  }
}