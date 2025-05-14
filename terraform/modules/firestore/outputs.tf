output "firestore_database_name" {
  description = "The name of the created Firestore database."
  value       = google_firestore_database.default.name
}

output "firestore_index_name" {
  description = "The name of the created Firestore index."
  value       = google_firestore_index.default.name
}