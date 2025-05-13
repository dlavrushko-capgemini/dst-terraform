resource "google_bigquery_dataset" "default" {
  dataset_id = var.bigquery_dataset_name
  location   = var.region

  access {
    role          = "READER"
    user_by_email = var.reader_email
  }
}