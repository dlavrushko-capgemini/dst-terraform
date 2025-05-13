output "alerts" {
  value = google_monitoring_alert_policy.alert_policy.display_name
}