# Network names
variable "network_name_prod" {
  description = "Network name (PROD)"
  type        = string
  default     = "network-prod"
}

variable "network_name_test" {
  description = "Network name (TEST)"
  type        = string
  default     = "network-test"
}

variable "network_name_dev" {
  description = "Network name (DEV)"
  type        = string
  default     = "network-dev"
}

# Subnet names
variable "subnet_name_prod" {
  description = "Subnet name (PROD)"
  type        = string
  default     = "subnet-prod"
}

variable "subnet_name_test" {
  description = "Subnet name (TEST)"
  type        = string
  default     = "subnet-test"
}

variable "subnet_name_dev" {
  description = "Subnet name (DEV)"
  type        = string
  default     = "subnet-dev"
}

# Firewall names
variable "network_firewall_name_prod" {
  description = "Firewall name (PROD)"
  type        = string
  default     = "firewall-prod"
}

variable "network_firewall_name_test" {
  description = "Firewall name (TEST)"
  type        = string
  default     = "firewall-test"
}

variable "network_firewall_name_dev" {
  description = "Firewall name (DEV)"
  type        = string
  default     = "firewall-dev"
}

# IP ranges
variable "ip_cidr_range_prod" {
  description = "IP CIDR range (PROD)"
  type        = string
  default     = "10.2.0.0/16"
}

variable "ip_cidr_range_test" {
  description = "IP CIDR range (TEST)"
  type        = string
  default     = "10.4.0.0/16"
}

variable "ip_cidr_range_dev" {
  description = "IP CIDR range (DEV)"
  type        = string
  default     = "10.6.0.0/16"
}

# Source ranges
variable "source_range_prod" {
  description = "IP source range (PROD)"
  type        = string
  default     = "0.0.0.0/0"
}

variable "source_range_test" {
  description = "IP source range (TEST)"
  type        = string
  default     = "193.234.97.131/32" # Your private IP, to test/simulate this
}

variable "source_range_dev" {
  description = "IP source range (DEV)"
  type        = string
  default     = "193.234.97.131/32" # Your private IP, to test/simulate this
}
