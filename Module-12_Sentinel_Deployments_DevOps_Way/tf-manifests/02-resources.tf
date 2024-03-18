resource "azurerm_resource_group" "senitnel_rg_res" {
  name     = var.rg_name
  location = var.res_loc
}

resource "azurerm_log_analytics_workspace" "sentinel_law_res" {
  name                = var.law_name
  location            = azurerm_resource_group.senitnel_rg_res.location
  resource_group_name = azurerm_resource_group.senitnel_rg_res.name
  sku                 = var.law_sku
}

resource "azurerm_sentinel_log_analytics_workspace_onboarding" "sentinel_law_onbrd_res" {
  workspace_id = azurerm_log_analytics_workspace.sentinel_law_res.id
}

resource "azurerm_role_assignment" "role_assign_res" {
  scope                = data.azurerm_subscription.primary.id
  role_definition_name = "Contributor"
  principal_id         = data.azurerm_client_config.current.object_id
}
