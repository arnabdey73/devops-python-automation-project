variable "location" {
  description = "The Azure region to deploy resources in."
  default     = "East US"
}

variable "resource_group_name" {
  description = "Name of the resource group for AKS and related resources."
  default     = "aks-cluster-rg"
}

variable "cluster_name" {
  description = "Name of the Azure Kubernetes Service (AKS) cluster."
  default     = "aks-cluster"
}

variable "node_count" {
  description = "Number of nodes in the AKS cluster."
  default     = 3
}

variable "node_size" {
  description = "Size of the virtual machines in the AKS cluster."
  default     = "Standard_DS2_v2"
}

variable "admin_username" {
  description = "Admin username for the AKS nodes."
  default     = "azureuser"
}

variable "client_id" {
  description = "Client ID for the service principal."
}

variable "client_secret" {
  description = "Client Secret for the service principal."
}

variable "vnet_name" {
  description = "Name of the virtual network."
  default     = "aks-vnet"
}

variable "subnet_name" {
  description = "Name of the subnet within the virtual network."
  default     = "aks-subnet"
}

variable "address_space" {
  description = "Address space for the virtual network."
  default     = ["10.0.0.0/16"]
}

variable "subnet_prefix" {
  description = "Subnet address prefix."
  default     = "10.0.1.0/24"
}

variable "tags" {
  description = "Tags to apply to resources."
  type        = map(string)
  default     = {
    environment = "production"
    project     = "DevOps Automation"
  }
}
