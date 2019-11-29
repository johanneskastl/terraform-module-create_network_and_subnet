#
# network
#

variable "network_name" {
  description = "Name of the new network"
}

variable "network_admin_state_up" {
  description = "Value for admin_state_up"
  default     = true
}

#
# subnet settings
#

variable "subnet_name" {
  description = "Name of the new subnet"
}

variable "subnet_cidr" {
  description = "CIDR for the new subnet"
}

variable "subnet_ip_version" {
  description = "Which IP version to use for the new subnet (IPv4, IPv6)?"
  default     = "4"
}

variable "subnet_enable_dhcp" {
  description = "Enable DHCP in the new subnet?"
  default     = true
}

variable "subnet_disable_gateway" {
  description = "Disable the gateway in the new subnet?"
}

variable "subnet_dns_servers" {
  type        = list
  description = "List of DNS servers for the new subnet"
}
