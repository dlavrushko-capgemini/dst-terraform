project_id = "my-gcp-project"
region     = "us-central1"
zones      = ["us-central1-a", "us-central1-b", "us-central1-c"]
network_name = "my-vpc-network"
subnet_cidr_ranges = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
firewall_rules = []
compute_instance_types = {
  proxysql   = "e2-medium",
  mysql      = "e2-medium",
  orchestrator = "e2-medium",
  prometheus = "e2-medium",
  grafana    = "e2-medium"
}
disk_sizes = {
  proxysql   = 50,
  mysql      = 100,
  orchestrator = 50,
  prometheus = 50,
  grafana    = 50
}