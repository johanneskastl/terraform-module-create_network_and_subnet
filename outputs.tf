#
# network
#
output "new_network_id" {
  value = openstack_networking_network_v2.new_network.id
}

#
# subnet
#
output "new_subnet_id" {
  value = openstack_networking_subnet_v2.new_subnet.id
}
