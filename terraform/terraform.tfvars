project_id = "my-gcp-project"
region     = "us-central1"

network_name = "shared-services-vpc"
subnet_cidr  = "10.0.0.0/24"

vm_instance_type = "e2-medium"

storage_bucket_name = "my-storage-bucket"

database_instance_name = "my-database-instance"

dns_zone_name = "my-dns-zone"

firewall_rules = {
  "allow-ssh" = {
    direction = "INGRESS"
    ports     = ["22"]
    protocol  = "tcp"
  }
}

monitoring_alert_name = "high-cpu-usage"