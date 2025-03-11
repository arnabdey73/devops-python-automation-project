resource "azurerm_resource_group" "aks" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  location            = azurerm_resource_group.aks.location
  resource_group_name = azurerm_resource_group.aks.name
  dns_prefix          = "aks-${var.cluster_name}"

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.node_size
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin = "azure"
    network_policy = "azure"
  }

  service_principal {
    client_id     = var.client_id
    client_secret = var.client_secret
  }

  tags = var.tags
}

resource "azurerm_kubernetes_cluster_node_pool" "system" {
  name                = "system"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks.id
  vm_size             = var.node_size
  node_count          = var.node_count
  mode                = "System"
}
