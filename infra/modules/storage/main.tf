resource "google_storage_bucket" "storage_prod" {
  name          = var.storage_name_prod
  location      = var.location
  force_destroy = true

  lifecycle_rule {
    condition {
      age = "30" # TODO: variable
    }
    action {
      type          = "SetStorageClass"
      storage_class = "COLDLINE"
    }
  }

  lifecycle_rule {
    condition {
      age = "1095" # TODO: variable
    }
    action {
      type = "Delete"
    }
  }
}

resource "google_storage_bucket" "storage_test" {
  name          = var.storage_name_test
  location      = var.location
  force_destroy = true

  lifecycle_rule {
    condition {
      age = "7" # TODO: variable
    }
    action {
      type = "Delete"
    }
  }
}

resource "google_storage_bucket" "storage_dev" {
  name          = var.storage_name_dev
  location      = var.location
  force_destroy = true

  lifecycle_rule {
    condition {
      age = "1" # TODO: variable
    }
    action {
      type = "Delete"
    }
  }
}
