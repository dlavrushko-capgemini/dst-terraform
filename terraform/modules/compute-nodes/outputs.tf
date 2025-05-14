output "windows_jump_box_id" {
  value = google_compute_instance.windows_jump_box.id
}

output "linux_jump_box_id" {
  value = google_compute_instance.linux_jump_box.id
}