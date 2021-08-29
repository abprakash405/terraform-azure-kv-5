data "azurerm_client_config" "current" {}

resource "azurerm_public_ip" "example" {
  name                = var.pip_name
  resource_group_name = var.rg_name
  location            = var.location
  allocation_method   = var.am
  sku {
    name     = "Standard"
    tier     = "Global"
  }
}
