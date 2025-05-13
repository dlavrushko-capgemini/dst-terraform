output "warehouse_id" {
  value = google_bigquery_dataset.data_warehouse.dataset_id
}

output "warehouse_location" {
  value = google_bigquery_dataset.data_warehouse.location
}