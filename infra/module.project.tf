module "project" {
  source = "./modules/project"

  region = var.region
  zone   = var.zone

  gcp_service_list = var.gcp_service_list

  name               = var.name
  project_id         = var.project_id
  billing_account_id = var.billing_account_id

  service_account_compute_prod = var.service_account_compute_prod
  service_account_compute_test = var.service_account_compute_test
  service_account_compute_dev  = var.service_account_compute_dev
}
