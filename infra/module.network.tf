module "network" {
  source = "./modules/network"

  region = var.region
  zone   = var.zone

  tcp_ports = var.tcp_ports

  network_name_prod = var.network_name_prod
  network_name_test = var.network_name_test
  network_name_dev  = var.network_name_dev

  subnet_name_prod = var.subnet_name_prod
  subnet_name_test = var.subnet_name_test
  subnet_name_dev  = var.subnet_name_dev

  target_service_accounts_prod = var.target_service_accounts_prod
  target_service_accounts_test = var.target_service_accounts_test
  target_service_accounts_dev  = var.target_service_accounts_dev

  network_firewall_name_prod = var.network_firewall_name_prod
  network_firewall_name_test = var.network_firewall_name_test
  network_firewall_name_dev  = var.network_firewall_name_dev

  ip_cidr_range_prod = var.ip_cidr_range_prod
  ip_cidr_range_test = var.ip_cidr_range_test
  ip_cidr_range_dev  = var.ip_cidr_range_dev

  source_range_prod = var.source_range_prod
  source_range_test = var.source_range_test
  source_range_dev  = var.source_range_dev
}
