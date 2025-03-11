resource "azurerm_role_assignment" "aks_cluster_admin" {
  scope                = azurerm_kubernetes_cluster.aks.id
  role_definition_name = "Azure Kubernetes Service Cluster Admin Role"
  principal_id         = azurerm_kubernetes_cluster.aks.identity[0].principal_id
}

resource "azurerm_role_assignment" "network_contributor" {
  scope                = azurerm_virtual_network.aks.id
  role_definition_name = "Network Contributor"
  principal_id         = azurerm_kubernetes_cluster.aks.identity[0].principal_id
}

resource "azurerm_user_assigned_identity" "aks_identity" {
  resource_group_name = azurerm_resource_group.aks.name
  location            = azurerm_resource_group.aks.location
  name                = "aks-identity"
}

resource "azurerm_role_assignment" "managed_identity_contributor" {
  scope                = azurerm_resource_group.aks.id
  role_definition_name = "Contributor"
  principal_id         = azurerm_user_assigned_identity.aks_identity.principal_id
}

resource "azurerm_role_assignment" "log_analytics_contributor" {
  scope                = azurerm_log_analytics_workspace.aks.id
  role_definition_name = "Log Analytics Contributor"
  principal_id         = azurerm_kubernetes_cluster.aks.identity[0].principal_id
}
