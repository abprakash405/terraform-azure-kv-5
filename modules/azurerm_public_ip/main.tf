resource "azurerm_public_ip" "example" {
  name                = "example-pip"
  resource_group_name = var.rg_name
  location            = var.location
  allocation_method   = "Dynamic"
}
