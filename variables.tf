variable "region" {}
variable "rg-name" {}
variable "cidr" {}
variable "subnet-1" {
  type = map(string)
}
variable "subnet-2" {
  type = map(string)
}
variable "name" {
  type = map(string)
}
variable "nodepool-size" {}
variable "nodepool-type" {}
variable "network-plugin" {}
variable "network-cidr" {}
variable "network-dns" {}