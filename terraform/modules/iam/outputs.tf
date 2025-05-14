output "terraform_service_account_email" {
  description = "The email of the Terraform service account"
  value       = google_service_account.terraform.email
}

output "terraform_service_account_role" {
  description = "The role assigned to the Terraform service account"
  value       = var.iam_config["terraform_role"]
}