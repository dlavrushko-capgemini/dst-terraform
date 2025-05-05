output "network_id" {
  value = module.network.network_id
}

output "compute_instance_ids" {
  value = module.compute_nodes.instance_ids
}

output "database_instance_ids" {
  value = module.database.instance_ids
}

output "firewall_rules" {
  value = module.firewall.rules
}

output "security_group_ids" {
  value = module.security.group_ids
}