output "instance_ids" {
  value = [google_compute_instance.mysql_source.id, google_compute_instance.mysql_replica.id]
}