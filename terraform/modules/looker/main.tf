resource "google_looker_model" "default" {
  name = var.looker_model_name
  description = "Default Looker model"
}