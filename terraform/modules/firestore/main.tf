resource "google_firestore_database" "default" {
  name     = var.database_name
  project  = var.project_id
  location = var.location
}

resource "google_firestore_index" "default" {
  name       = var.index_name
  database   = google_firestore_database.default.name
  query_scope = var.query_scope
  fields {
    field_path = var.field_path
    order      = var.order
  }
}