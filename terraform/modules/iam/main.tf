resource "google_service_account" "terraform" {
  account_id   = var.iam_config["terraform_account_id"]
  display_name = "Terraform Service Account"
}

resource "google_project_iam_member" "terraform" {
  project = var.project_id
  role    = var.iam_config["terraform_role"]
  member  = "serviceAccount:${google_service_account.terraform.email}"
}