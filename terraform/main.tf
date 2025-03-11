terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.64.0"
    }
  }

  required_version = ">= 1.0.0"
}

provider "azurerm" {
  features {}
}

backend "azurerm" {
  resource_group_name   = "terraform-backend-rg"
  storage_account_name  = "terraformbackend"
  container_name        = "tfstate"
  key                   = "aks-cluster.tfstate"
}
