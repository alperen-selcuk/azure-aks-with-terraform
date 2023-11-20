region         = "North Europe"
rg-name        = "PROD"
cidr           = "10.255.0.0/16"
nodepool-size  = "Standard_D2_v2"
nodepool-type  = "VirtualMachineScaleSets"
network-plugin = "azure"
network-cidr   = "10.0.128.0/20"
network-dns    = "10.0.128.10"
subnet-1 = {
  "name" = "k8s-subnet"
  "cidr" = "10.255.0.0/20"
}
subnet-2 = {
  "name" = "host-subnet"
  "cidr" = "10.255.255.0/24"
}
name = {
  "prod-vnet" = "prod-vnet"
  "k8s-name"  = "prodk8s"
  "k8s-dns"   = "prodk8sdns"
  "sku-tier"  = "Free"
  "nodepool"  = "default"
}