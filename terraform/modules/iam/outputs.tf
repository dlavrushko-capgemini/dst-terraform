output "iam_role" {
  description = "The IAM role assigned."
  value       = google_project_iam_member.default.role
}

output "iam_member" {
  description = "The IAM member assigned."
  value       = google_project_iam_member.default.member
}