resource "google_looker_studio_report" "default" {
  name = var.looker_studio_report_name
  description = "Default Looker Studio report"
}