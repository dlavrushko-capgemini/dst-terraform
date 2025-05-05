output "instance_ids" {
  value = [google_compute_instance.orchestrator.id]
}