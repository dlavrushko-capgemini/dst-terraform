output "dashboard_id" {
  value = google_looker_instance.visualization.name
}

output "region" {
  value = google_looker_instance.visualization.region
}