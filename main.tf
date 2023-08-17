terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.69.0"
    }
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

# resource "azurerm_kubernetes_cluster" "learning_cluster" {
#   name                = var.k8s_cluster_name
#   location            = azurerm_resource_group.rg.location
#   resource_group_name = azurerm_resource_group.rg.name
#   dns_prefix          = var.dns_prefix

#   default_node_pool {
#     name       = "default"
#     node_count = var.node_count
#     vm_size    = var.vm_size
#   }

#   identity {
#     type = "SystemAssigned"
#   }

#   tags = {
#     Environment = "Stage"
#   }
# }

# resource "azurerm_storage_account" "tfstate" {
#   name                     = "tfstatek8s12344321"
#   resource_group_name      = azurerm_resource_group.rg.name
#   location                 = azurerm_resource_group.rg.location
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
#   allow_nested_items_to_be_public = false

#   tags = {
#     environment = "Stage"
#   }
# }

# resource "azurerm_storage_container" "tfstate" {
#   name                  = "tfstate"
#   storage_account_name  = azurerm_storage_account.tfstate.name
#   container_access_type = "private"
# }