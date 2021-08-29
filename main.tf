data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "example" {
  name     = var.rg_name
  location = var.location
}

module "keyvault" {
  source = "./modules/keyvault"
  
  kv_name = var.kv_name
  location = azurerm_resource_group.example.location
  rg_name = azurerm_resource_group.example.name

}
  
module "azurerm-public-ip" {
  source = "./modules/azurerm-public-ip"

  pip_name = var.pip_name
  rg_name  = var.rg_name
  location = var.location
  am       = var.am
  
  
}
