resource "google_monitoring_alert_policy" "alert_policy" {
  display_name = var.monitoring_alert_name
  conditions {
    condition_threshold {
      filter          = "metric.type=\"compute.googleapis.com/instance/cpu/utilization\""
      comparison      = "COMPARISON_GT"
      threshold_value = 0.8
    }
  }
}