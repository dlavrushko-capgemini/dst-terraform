output "roles" {
  value = google_project_iam_member.auth_roles.role
}

output "member" {
  value = google_project_iam_member.auth_roles.member
}