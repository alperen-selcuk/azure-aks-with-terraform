resource "azurerm_subnet" "production" {
  name                 = var.subnet-1.name
  resource_group_name  = azurerm_resource_group.production.name
  virtual_network_name = azurerm_virtual_network.production.name
  address_prefixes     = [var.subnet-1.cidr]
}

resource "azurerm_subnet" "host" {
  name                 = var.subnet-2.name
  resource_group_name  = azurerm_resource_group.production.name
  virtual_network_name = azurerm_virtual_network.production.name
  address_prefixes     = [var.subnet-2.cidr]
}