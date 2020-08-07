module "cloudbuild" {
  source = "./modules/cloudbuild"

  zone          = var.zone
  region        = var.region
  project       = var.project
  repo          = var.cloudbuild_repo
  service_name  = var.service_name
  filename      = var.cloudbuild_filename
  trigger_name  = var.cloudbuild_trigger_name
  instance_name = var.instance_name

  env_prod = var.env_prod
  env_test = var.env_test
  env_dev  = var.env_dev

  branch_prod = var.cloudbuild_branch_prod
  branch_test = var.cloudbuild_branch_test
  branch_dev  = var.cloudbuild_branch_dev
}
