output "bastion_host_id" {
  description = "The ID of the bastion host instance"
  value       = google_compute_instance.bastion_host.id
}

output "windows_jump_box_id" {
  description = "The ID of the Windows jump box instance"
  value       = google_compute_instance.windows_jump_box.id
}

output "linux_jump_box_id" {
  description = "The ID of the Linux jump box instance"
  value       = google_compute_instance.linux_jump_box.id
}