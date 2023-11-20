resource "azurerm_resource_group" "production" {
  name     = var.rg-name
  location = var.region
}
