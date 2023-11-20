resource "azurerm_virtual_network" "production" {
  name                = var.name.prod-vnet
  location            = azurerm_resource_group.production.location
  resource_group_name = azurerm_resource_group.production.name
  address_space       = [var.cidr]

  tags = {
    environment = "Production"
  }
}