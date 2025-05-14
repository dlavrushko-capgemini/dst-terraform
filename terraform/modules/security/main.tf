resource "google_active_directory_domain" "managed_ad" {
  domain_name = "example.com"
}

output "managed_ad_id" {
  value = google_active_directory_domain.managed_ad.id
}