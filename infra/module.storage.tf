module "storage" {
  source = "./modules/storage/"

  name     = var.bucket_name
  location = var.bucket_location
}
