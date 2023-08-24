terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.69.0"
    }
  }
    backend "azurerm" {
      resource_group_name  = var.resource_group_name
      storage_account_name = var.storage_account_name
      container_name       = var.container_name
      key                  = "terraform.tfstate"
  }

}


provider "azurerm" {
    skip_provider_registration = true # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
}




resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_kubernetes_cluster" "learning_cluster" {
  name                = var.k8s_cluster_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.vm_size
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Stage"
  }
}

