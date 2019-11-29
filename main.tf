# Create a new network
resource "openstack_networking_network_v2" "new_network" {
  name           = var.network_name
  admin_state_up = var.network_admin_state_up
}

# Create a new subnet
resource "openstack_networking_subnet_v2" "new_subnet" {
  name            = var.subnet_name
  network_id      = openstack_networking_network_v2.new_network.id
  cidr            = var.subnet_cidr
  ip_version      = var.subnet_ip_version
  enable_dhcp     = var.subnet_enable_dhcp
  no_gateway      = var.subnet_disable_gateway
  dns_nameservers = var.subnet_dns_servers
}
