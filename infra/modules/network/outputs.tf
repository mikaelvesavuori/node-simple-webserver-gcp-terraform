output "network_prod_output" {
  value       = google_compute_network.network_prod
  description = "The PROD network"
}

output "subnet_prod_output" {
  value       = google_compute_subnetwork.subnet_prod
  description = "The PROD subnet"
}

output "network_test_output" {
  value       = google_compute_network.network_test
  description = "The TEST network"
}

output "subnet_test_output" {
  value       = google_compute_subnetwork.subnet_test
  description = "The TEST subnet"
}

output "network_dev_output" {
  value       = google_compute_network.network_dev
  description = "The DEV network"
}

output "subnet_dev_output" {
  value       = google_compute_subnetwork.subnet_dev
  description = "The DEV subnet"
}
