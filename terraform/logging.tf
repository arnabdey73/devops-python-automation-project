resource "azurerm_monitor_log_profile" "aks" {
  name = "aks-log-profile"

  categories = [
    "Action",
    "Write",
    "Delete"
  ]

  locations = [
    "eastus",
    "global"
  ]

  retention_policy {
    enabled = true
    days    = 30
  }
}

resource "azurerm_monitor_activity_log_alert" "aks_alert" {
  name                = "aks-activity-log-alert"
  resource_group_name = azurerm_resource_group.aks.name
  scopes              = [azurerm_resource_group.aks.id]

  criteria {
    category      = "Administrative"
    operation_name = "Microsoft.ContainerService/managedClusters/write"
  }

  action {
    action_group_id = "/subscriptions/<subscription_id>/resourceGroups/<resource_group>/providers/microsoft.insights/actionGroups/<action_group_name>"
  }
}
