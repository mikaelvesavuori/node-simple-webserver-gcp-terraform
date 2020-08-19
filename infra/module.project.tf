module "project" {
  source = "./modules/project"

  region = var.region
  zone   = var.zone

  gcp_service_list = var.gcp_service_list

  name                 = var.name
  project_id           = var.project_id
  billing_account_name = var.billing_account_name
}
