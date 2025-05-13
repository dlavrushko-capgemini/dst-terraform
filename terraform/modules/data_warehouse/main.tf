resource "google_bigquery_dataset" "data_warehouse" {
  dataset_id = var.dataset_id
  location   = var.region

  access {
    role          = "READER"
    user_by_email = var.reader_email
  }

  access {
    role          = "WRITER"
    user_by_email = var.writer_email
  }
}