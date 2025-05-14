resource "google_monitoring_alert_policy" "default" {
  display_name = "Default Alert Policy"
  conditions {
    condition_threshold {
      filter = "metric.type=\"compute.googleapis.com/instance/cpu/utilization\""
      comparison = "COMPARISON_GT"
      threshold_value = 0.8
    }
  }
}

output "alert_policy_id" {
  value = google_monitoring_alert_policy.default.id
}