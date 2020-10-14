//--------------------------------------------------------------------
// Variables
variable "vnet_address_space" {}
variable "vnet_dns_servers" {}
variable "vnet_nsg_ids" {}
variable "vnet_route_tables_ids" {}
variable "vnet_subnet_prefixes" {}
variable "vnet_subnet_service_endpoints" {}
variable "vnet_tags" {}

//--------------------------------------------------------------------
// Modules
module "vnet" {
  source  = "app.terraform.io/Premek-training/vnet/azurerm"
  version = "2.3.0"

  address_space = "${var.vnet_address_space}"
  dns_servers = "${var.vnet_dns_servers}"
  nsg_ids = "${var.vnet_nsg_ids}"
  resource_group_name = " ${var.prefix}-workshop"
  route_tables_ids = "${var.vnet_route_tables_ids}"
  subnet_names = "${var.prefix}-subnet"
  subnet_prefixes = "${var.vnet_subnet_prefixes}"
  subnet_service_endpoints = "${var.vnet_subnet_service_endpoints}"
  tags = "${var.vnet_tags}"
  vnet_name = "${var.prefix}-vnet"
}