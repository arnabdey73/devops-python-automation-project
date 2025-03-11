resource "azurerm_log_analytics_workspace" "aks" {
  name                = "aks-log-analytics"
  resource_group_name = azurerm_resource_group.aks.name
  location            = azurerm_resource_group.aks.location
  sku                 = "PerGB2018"
  retention_in_days   = 30
  tags                = var.tags
}

resource "azurerm_monitor_diagnostic_setting" "aks" {
  name                       = "aks-diagnostics"
  target_resource_id         = azurerm_kubernetes_cluster.aks.id
  log_analytics_workspace_id = azurerm_log_analytics_workspace.aks.id

  dynamic "log" {
    for_each = [
      "kube-apiserver",
      "kube-audit",
      "kube-controller-manager",
      "cluster-autoscaler"
    ]
    content {
      category = log.value
      enabled  = true
    }
  }

  dynamic "metric" {
    for_each = [
      "AllMetrics"
    ]
    content {
      category = metric.value
      enabled  = true
    }
  }
}
