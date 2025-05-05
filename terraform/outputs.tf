output "network_vpc_id" {
  value = module.network.vpc_id
}

output "firewall_rule_ids" {
  value = module.firewall.firewall_rule_ids
}

output "compute_instance_ids" {
  value = module.compute_nodes.instance_ids
}

output "database_instance_ids" {
  value = module.database.instance_ids
}

output "monitoring_instance_ids" {
  value = module.monitoring.instance_ids
}