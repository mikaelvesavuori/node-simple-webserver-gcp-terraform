module "project" {
  source = "./modules/project"

  region = var.region
  zone   = var.zone

  gcp_service_list = var.gcp_service_list
}
