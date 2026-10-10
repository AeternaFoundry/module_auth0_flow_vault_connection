output "flow_vault_connections_id" {
  description = "Map of id values across all flow_vault_connections, keyed the same as var.flow_vault_connections except keys with no id are omitted"
  value       = { for k, v in auth0_flow_vault_connection.flow_vault_connections : k => v.id if v.id != null && length(v.id) > 0 }
}
output "flow_vault_connections_account_name" {
  description = "Map of account_name values across all flow_vault_connections, keyed the same as var.flow_vault_connections except keys with no account_name are omitted"
  value       = { for k, v in auth0_flow_vault_connection.flow_vault_connections : k => v.account_name if v.account_name != null && length(v.account_name) > 0 }
}
output "flow_vault_connections_app_id" {
  description = "Map of app_id values across all flow_vault_connections, keyed the same as var.flow_vault_connections except keys with no app_id are omitted"
  value       = { for k, v in auth0_flow_vault_connection.flow_vault_connections : k => v.app_id if v.app_id != null && length(v.app_id) > 0 }
}
output "flow_vault_connections_environment" {
  description = "Map of environment values across all flow_vault_connections, keyed the same as var.flow_vault_connections except keys with no environment are omitted"
  value       = { for k, v in auth0_flow_vault_connection.flow_vault_connections : k => v.environment if v.environment != null && length(v.environment) > 0 }
}
output "flow_vault_connections_fingerprint" {
  description = "Map of fingerprint values across all flow_vault_connections, keyed the same as var.flow_vault_connections except keys with no fingerprint are omitted"
  value       = { for k, v in auth0_flow_vault_connection.flow_vault_connections : k => v.fingerprint if v.fingerprint != null && length(v.fingerprint) > 0 }
}
output "flow_vault_connections_name" {
  description = "Map of name values across all flow_vault_connections, keyed the same as var.flow_vault_connections except keys with no name are omitted"
  value       = { for k, v in auth0_flow_vault_connection.flow_vault_connections : k => v.name if v.name != null && length(v.name) > 0 }
}
output "flow_vault_connections_ready" {
  description = "Map of ready values across all flow_vault_connections, keyed the same as var.flow_vault_connections except keys with no ready are omitted"
  value       = { for k, v in auth0_flow_vault_connection.flow_vault_connections : k => v.ready if v.ready != null }
}
output "flow_vault_connections_setup" {
  description = "Map of setup values across all flow_vault_connections, keyed the same as var.flow_vault_connections except keys with no setup are omitted"
  value       = { for k, v in auth0_flow_vault_connection.flow_vault_connections : k => v.setup if v.setup != null && length(v.setup) > 0 }
  sensitive   = true
}

