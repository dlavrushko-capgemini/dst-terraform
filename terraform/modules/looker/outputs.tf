output "looker_instance_name" {
  description = "The name of the created Looker instance."
  value       = google_looker_instance.default.name
}