resource "azurerm_kubernetes_cluster" "production" {
  name                = var.name.k8s-name
  location            = azurerm_resource_group.production.location
  resource_group_name = azurerm_resource_group.production.name
  dns_prefix          = var.name.k8s-dns

  sku_tier = var.name.sku-tier

  default_node_pool {
    name           = var.name.nodepool
    node_count     = 1
    vm_size        = var.nodepool-size
    vnet_subnet_id = azurerm_subnet.host.id
    type           = var.nodepool-type
  }

  network_profile {
    network_plugin = var.network-plugin
    service_cidr   = var.network-cidr
    dns_service_ip = var.network-dns

  }
  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}

output "client_certificate" {
  value     = azurerm_kubernetes_cluster.production.kube_config.0.client_certificate
  sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.production.kube_config_raw

  sensitive = true
}