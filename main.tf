resource "auth0_flow_vault_connection" "flow_vault_connections" {
  for_each = var.flow_vault_connections

  app_id       = each.value.app_id
  name         = each.value.name
  account_name = each.value.account_name
  environment  = each.value.environment
  fingerprint  = each.value.fingerprint
  setup        = each.value.setup
}

