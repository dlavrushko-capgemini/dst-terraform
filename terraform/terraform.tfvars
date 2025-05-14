project_id = "my-gcp-project"
region     = "us-central1"

vpc_shared_services_name = "shared-services-vpc"
vpc_application_name     = "application-vpc"

subnet_shared_services = ["10.0.0.0/24"]
subnet_application     = ["10.1.0.0/24"]

firewall_rules = {}
bastion_host_config = {}
jump_boxes_config = {}
cloud_sql_config = {}
sql_server_config = {}
cloud_storage_config = {}
cloud_dns_config = {}
cloud_kms_config = {}
monitoring_config = {}