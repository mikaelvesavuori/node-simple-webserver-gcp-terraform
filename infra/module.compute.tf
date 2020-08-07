module "compute" {
  source = "./modules/compute"

  zone         = var.zone
  project      = var.project
  service_name = var.service_name

  env_prod = var.env_prod
  env_test = var.env_test
  env_dev  = var.env_dev

  cos_image_name         = var.cos_image_name
  server_image_name_base = var.server_image_name_base
  subnet_name            = var.subnet_name
  instance_name          = var.instance_name

  disk_size = var.disk_size
  disk_type = var.disk_type

  instance_machinetype_prod = var.instance_machinetype_prod
  instance_machinetype_test = var.instance_machinetype_test
  instance_machinetype_dev  = var.instance_machinetype_dev
}
