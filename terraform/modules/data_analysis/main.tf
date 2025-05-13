resource "google_bigquery_table" "analysis_table" {
  dataset_id = var.dataset_id
  table_id   = var.table_id

  schema = var.schema

  time_partitioning {
    type = "DAY"
  }
}