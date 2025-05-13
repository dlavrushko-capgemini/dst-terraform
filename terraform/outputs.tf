output "network_id" {
  value = module.network.network_id
}

output "database_instance" {
  value = module.database.database_instance
}

output "data_lake_bucket" {
  value = module.data_lake.bucket_name
}

output "data_orchestration_pipeline" {
  value = module.data_orchestration.pipeline_id
}

output "data_warehouse_id" {
  value = module.data_warehouse.warehouse_id
}

output "data_analysis_model" {
  value = module.data_analysis.model_id
}

output "data_visualization_dashboard" {
  value = module.data_visualization.dashboard_id
}

output "authentication_roles" {
  value = module.authentication.roles
}

output "monitoring_alerts" {
  value = module.monitoring.alerts
}

output "security_keys" {
  value = module.security.keys
}