resource "azurerm_network_security_rule" "nsg-rules-demo" {
  resource_group_name         = azurerm_resource_group.dheeraj-demo.name
  network_security_group_name = azurerm_network_security_group.nsg-dheeraj.name
  count                       = length(var.inbound_port_ranges)
  name                        = "sg-rule-${count.index}"
  direction                   = "Inbound"
  access                      = "Allow"
  priority                    = (100 + count.index)
  source_address_prefix       = "*"
  source_port_range           = "*"
  destination_address_prefix  = "*"
  destination_port_range      = element(var.inbound_port_ranges, count.index)
  protocol                    = "TCP"
}
