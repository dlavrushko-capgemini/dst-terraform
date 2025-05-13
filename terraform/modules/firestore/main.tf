resource "google_firestore_index" "default" {
  collection = var.firestore_collection_name
  fields {
    field_path = "field1"
    order      = "ASCENDING"
  }
  fields {
    field_path = "field2"
    order      = "DESCENDING"
  }
}