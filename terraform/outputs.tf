output "network_id" {
  value = module.network.network_id
}

output "database_instance" {
  value = module.database.instance_name
}

output "firewall_rules" {
  value = module.firewall.rules
}

output "security_policies" {
  value = module.security.policies
}

output "compute_instance_ids" {
  value = module.compute_nodes.instance_ids
}

output "monitoring_dashboard" {
  value = module.monitoring.dashboard_url
}

output "logging_sink" {
  value = module.logging.sink_name
}