output "cloud_storage_bucket_name" {
  description = "The name of the Cloud Storage bucket"
  value       = google_storage_bucket.cloud_storage.name
}

output "cloud_storage_bucket_url" {
  description = "The URL of the Cloud Storage bucket"
  value       = google_storage_bucket.cloud_storage.self_link
}