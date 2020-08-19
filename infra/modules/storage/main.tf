resource "google_storage_bucket" "storage_prod" {
  name          = "storage_webserver-bgjmrr34" # TODO: variable
  location      = "EU"                         # TODO: variable
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
  name          = "storage_webserver-cdsviou4" # TODO: variable
  location      = "EU"                         # TODO: variable
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
  name          = "storage_webserver-klskl4hj" # TODO: variable
  location      = "EU"                         # TODO: variable
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
