resource "google_monitoring_alert_policy" "alert_policy" {
  display_name = var.alert_name
  conditions {
    condition_threshold {
      filter          = var.filter
      comparison      = "COMPARISON_GT"
      threshold_value = var.threshold_value
    }
  }
}