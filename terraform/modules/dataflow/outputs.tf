output "dataflow_job_name" {
  description = "The name of the created Dataflow job."
  value       = google_dataflow_job.default.name
}