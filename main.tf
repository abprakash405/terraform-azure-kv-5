data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "example" {
  name     = var.rg_name
  location = var.location
}

module "keyvault" {
  source = "./modules/keyvault"
  
  kv_name = var.kv_name
  location = azurerm_resource_group.example.location
  resource_group_name1 = azurerm_resource_group.example.name

}