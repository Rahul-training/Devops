resource "azurerm_resource_group" "rg" {
    name = var.group_name
    location = var.location
    tags = var.tags
}

