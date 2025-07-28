resource "azurerm_network_interface" "example" {
  for_each = var.nic
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = each.value.ipname
    subnet_id                     = each.value.subnet_id
    private_ip_address_allocation = each.value.ip_allocation
  }
}