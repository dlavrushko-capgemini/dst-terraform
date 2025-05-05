resource "google_compute_firewall" "firewall_rules" {
  count        = length(var.firewall_rules)
  name         = var.firewall_rules[count.index].name
  direction    = var.firewall_rules[count.index].direction
  priority     = var.firewall_rules[count.index].priority
  network      = var.vpc_id
  action       = var.firewall_rules[count.index].action
  source_ranges = var.firewall_rules[count.index].source_ranges
  target_tags  = var.firewall_rules[count.index].target_tags
  allowed {
    protocol = "tcp"
    ports    = var.firewall_rules[count.index].ports
  }
}