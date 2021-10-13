resource "azurerm_resource_group" "dheeraj-demo" {
  name     = var.rg_name //"nsg-demo"
  location = var.region  //"East US"
}

resource "azurerm_network_security_group" "nsg-dheeraj" {
  name                = var.nsg_name //"NSG-for-ssh-http-port"
  location            = azurerm_resource_group.dheeraj-demo.location
  resource_group_name = azurerm_resource_group.dheeraj-demo.name
}
