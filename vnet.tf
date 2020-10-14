module "vnet" {
  source  = "app.terraform.io/Premek-training/vnet/azurerm"
  version = "2.3.0"

  address_space = [var.address_space]
  resource_group_name = "${var.prefix}-workshop"
  vnet_name = "${var.prefix}-vnet"
}