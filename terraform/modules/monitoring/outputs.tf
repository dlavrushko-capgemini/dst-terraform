output "instance_ids" {
  value = [google_compute_instance.prometheus.id, google_compute_instance.grafana.id]
}