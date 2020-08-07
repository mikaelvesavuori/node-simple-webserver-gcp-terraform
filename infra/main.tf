provider "google" {
  credentials = file("~/.gcloud/your-json-keyfile.json")
  project     = var.project
  region      = var.region
  zone        = var.zone
}
