output "cloud_armor_policy_id" {
  description = "The ID of the Cloud Armor security policy"
  value       = google_compute_security_policy.cloud_armor.id
}