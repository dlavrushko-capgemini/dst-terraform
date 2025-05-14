output "windows_vm_id" {
  value = google_compute_instance.windows_vm.id
}

output "linux_vm_id" {
  value = google_compute_instance.linux_vm.id
}