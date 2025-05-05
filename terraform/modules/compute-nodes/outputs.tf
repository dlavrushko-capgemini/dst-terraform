output "instance_ids" {
  value = [for instance in google_compute_instance.compute_nodes : instance.id]
}