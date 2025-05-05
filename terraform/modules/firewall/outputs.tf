output "firewall_rule_ids" {
  value = [for rule in google_compute_firewall.firewall_rules : rule.id]
}