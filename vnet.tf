module "vnet" {
  source  = "app.terraform.io/Premek-training/vnet/azurerm"
  version = "2.3.0"
  # insert required variables here
  resource_group_name = "premekvala-workshop"
  vnet_name = "premekvala-vnet"

}