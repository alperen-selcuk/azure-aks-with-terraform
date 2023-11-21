resource "azurerm_container_registry" "production" {
  name                = var.name.registry
  resource_group_name = azurerm_resource_group.production.name
  location            = azurerm_resource_group.production.location
  sku                 = var.name.registry-sku
}

resource "azurerm_role_assignment" "production" {
  principal_id                     = azurerm_kubernetes_cluster.production.kubelet_identity[0].object_id
  role_definition_name             = "AcrPull"
  scope                            = azurerm_container_registry.production.id
  skip_service_principal_aad_check = true
}