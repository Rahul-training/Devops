provider "azurerm" {
    
    subscription_id = var.subscription_id
    tenant_id = var.tenant_id
    client_id = var.client_id
    client_secret = var.client_secret
    features {}
}
resource "azurerm_resource_group" "rg" {
    name = var.group_name
    location = var.location
}

