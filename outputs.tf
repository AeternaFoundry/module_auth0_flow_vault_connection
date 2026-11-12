output "flow_vault_connections_id" {
  description = "Map of id values across all flow_vault_connections, keyed the same as var.flow_vault_connections"
  value       = { for k, v in auth0_flow_vault_connection.flow_vault_connections : k => v.id }
}
output "flow_vault_connections_account_name" {
  description = "Map of account_name values across all flow_vault_connections, keyed the same as var.flow_vault_connections"
  value       = { for k, v in auth0_flow_vault_connection.flow_vault_connections : k => v.account_name }
}
output "flow_vault_connections_app_id" {
  description = "Map of app_id values across all flow_vault_connections, keyed the same as var.flow_vault_connections"
  value       = { for k, v in auth0_flow_vault_connection.flow_vault_connections : k => v.app_id }
}
output "flow_vault_connections_environment" {
  description = "Map of environment values across all flow_vault_connections, keyed the same as var.flow_vault_connections"
  value       = { for k, v in auth0_flow_vault_connection.flow_vault_connections : k => v.environment }
}
output "flow_vault_connections_fingerprint" {
  description = "Map of fingerprint values across all flow_vault_connections, keyed the same as var.flow_vault_connections"
  value       = { for k, v in auth0_flow_vault_connection.flow_vault_connections : k => v.fingerprint }
}
output "flow_vault_connections_name" {
  description = "Map of name values across all flow_vault_connections, keyed the same as var.flow_vault_connections"
  value       = { for k, v in auth0_flow_vault_connection.flow_vault_connections : k => v.name }
}
output "flow_vault_connections_ready" {
  description = "Map of ready values across all flow_vault_connections, keyed the same as var.flow_vault_connections"
  value       = { for k, v in auth0_flow_vault_connection.flow_vault_connections : k => v.ready }
}
output "flow_vault_connections_setup" {
  description = "Map of setup values across all flow_vault_connections, keyed the same as var.flow_vault_connections"
  value       = { for k, v in auth0_flow_vault_connection.flow_vault_connections : k => v.setup }
  sensitive   = true
}

