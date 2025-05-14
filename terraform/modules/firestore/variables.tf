variable "database_name" {
  description = "The name of the Firestore database."
  type        = string
  default     = "default-firestore-db"
}

variable "project_id" {
  description = "The ID of the GCP project."
  type        = string
}

variable "location" {
  description = "The location of the Firestore database."
  type        = string
  default     = "us-central"
}

variable "index_name" {
  description = "The name of the Firestore index."
  type        = string
  default     = "default-index"
}

variable "query_scope" {
  description = "The scope of the Firestore index query."
  type        = string
  default     = "COLLECTION"
}

variable "field_path" {
  description = "The field path for the Firestore index."
  type        = string
  default     = "default-field"
}

variable "order" {
  description = "The order for the Firestore index field."
  type        = string
  default     = "ASCENDING"
}