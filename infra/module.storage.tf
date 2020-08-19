module "storage" {
  source = "./modules/storage/"

  name     = var.bucket_name
  location = var.bucket_location

  max_age_prod = var.max_age_prod
  max_age_test = var.max_age_test
  max_age_dev  = var.max_age_dev

  storage_name_prod = var.storage_name_dev
  storage_name_test = var.storage_name_test
  storage_name_dev  = var.storage_name_dev
}
