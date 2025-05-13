resource "google_monitoring_dashboard" "default" {
  dashboard_id = var.monitoring_dashboard_name
  display_name = var.monitoring_dashboard_name

  grid_layout {
    widgets {
      title = "CPU Usage"
      xy_chart {
        data_sets {
          time_series_query {
            prometheus_query = "rate(node_cpu_seconds_total[5m])"
          }
        }
      }
    }
  }
}