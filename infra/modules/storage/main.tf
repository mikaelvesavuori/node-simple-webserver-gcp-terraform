resource "google_storage_bucket" "storage_prod" {
  name          = "storage_webserver-bgjmrr34"
  location      = "EU"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = "30"
    }
    action {
      type          = "SetStorageClass"
      storage_class = "COLDLINE"
    }
  }

  lifecycle_rule {
    condition {
      age = "1095"
    }
    action {
      type = "Delete"
    }
  }
}

resource "google_storage_bucket" "storage_test" {
  name          = "storage_webserver-cdsviou4"
  location      = "EU"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = "7"
    }
    action {
      type = "Delete"
    }
  }
}

resource "google_storage_bucket" "storage_dev" {
  name          = "storage_webserver-klskl4hj"
  location      = "EU"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = "1"
    }
    action {
      type = "Delete"
    }
  }
}
