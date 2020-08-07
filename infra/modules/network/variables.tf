variable "zone" {
  description = "GCP zone"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}

# Names
variable "network_name_prod" {
  description = "Network name (PROD)"
  type        = string
}

variable "network_name_test" {
  description = "Network name (TEST)"
  type        = string
}

variable "network_name_dev" {
  description = "Network name (DEV)"
  type        = string
}

variable "subnet_name_prod" {
  description = "Subnet name (PROD)"
  type        = string
}

variable "subnet_name_test" {
  description = "Subnet name (TEST)"
  type        = string
}

variable "subnet_name_dev" {
  description = "Subnet name (DEV)"
  type        = string
}

# Firewall
variable "network_firewall_name_prod" {
  description = "Firewall name (PROD)"
  type        = string
}

variable "network_firewall_name_test" {
  description = "Firewall name (TEST)"
  type        = string
}

variable "network_firewall_name_dev" {
  description = "Firewall name (DEV)"
  type        = string
}

# IP ranges
variable "ip_cidr_range_prod" {
  description = "IP CIDR range (PROD)"
  type        = string
}

variable "ip_cidr_range_test" {
  description = "IP CIDR range (TEST)"
  type        = string
}

variable "ip_cidr_range_dev" {
  description = "IP CIDR range (DEV)"
  type        = string
}

# Source ranges
variable "source_range_prod" {
  description = "IP source range (PROD)"
  type        = string
}

variable "source_range_test" {
  description = "IP source range (TEST)"
  type        = string
}

variable "source_range_dev" {
  description = "IP source range (DEV)"
  type        = string
}
