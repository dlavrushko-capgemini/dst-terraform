output "rules" {
  value = [
    google_compute_firewall.allow_mysql.name,
    google_compute_firewall.allow_proxysql.name
  ]
}