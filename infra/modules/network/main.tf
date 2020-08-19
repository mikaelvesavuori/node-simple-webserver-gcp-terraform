# Networks
resource "google_compute_network" "network_prod" {
  name                    = var.network_name_prod
  auto_create_subnetworks = false
}

resource "google_compute_network" "network_test" {
  name                    = var.network_name_test
  auto_create_subnetworks = false
}

resource "google_compute_network" "network_dev" {
  name                    = var.network_name_dev
  auto_create_subnetworks = false
}

# Subnetworks
resource "google_compute_subnetwork" "subnet_prod" {
  region        = var.region
  name          = var.subnet_name_prod
  ip_cidr_range = var.ip_cidr_range_prod
  network       = google_compute_network.network_prod.id
}

resource "google_compute_subnetwork" "subnet_test" {
  region        = var.region
  name          = var.subnet_name_test
  ip_cidr_range = var.ip_cidr_range_test
  network       = google_compute_network.network_test.id
}

resource "google_compute_subnetwork" "subnet_dev" {
  region        = var.region
  name          = var.subnet_name_dev
  ip_cidr_range = var.ip_cidr_range_dev
  network       = google_compute_network.network_dev.id
}

# Firewalls
resource "google_compute_firewall" "firewall_prod" {
  name    = var.network_firewall_name_prod
  network = google_compute_network.network_prod.name

  allow {
    protocol = "tcp"
    ports    = var.tcp_ports
  }

  priority = "100"

  source_ranges = [var.source_range_prod]
  #source_tags   = ["env-prod"]

  target_tags = ["env-prod"]

  #target_service_accounts = var.target_service_accounts_prod
}

resource "google_compute_firewall" "firewall_test" {
  name    = var.network_firewall_name_test
  network = google_compute_network.network_test.name

  allow {
    protocol = "tcp"
    ports    = var.tcp_ports
  }

  priority = "100"

  source_ranges = [var.source_range_test]
  #source_tags   = ["env-test"]

  target_tags = ["env-prod"]

  #target_service_accounts = var.target_service_accounts_test
}

resource "google_compute_firewall" "firewall_dev" {
  name    = var.network_firewall_name_dev
  network = google_compute_network.network_dev.name

  allow {
    protocol = "tcp"
    ports    = var.tcp_ports
  }

  priority = "100"

  source_ranges = [var.source_range_dev]
  #source_tags   = ["env-dev"]

  target_tags = ["env-prod"]

  #target_service_accounts = var.target_service_accounts_dev
}
