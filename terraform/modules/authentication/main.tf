resource "google_project_iam_member" "auth_roles" {
  project = var.project_id
  role    = var.role
  member  = var.member
}