module "gce_container_prod" {
  source  = "terraform-google-modules/container-vm/google"
  version = "~> 2.0"

  cos_image_name = var.cos_image_name

  container = {
    image = format("%s/%s/%s-%s%s", "gcr.io", var.project, var.service_name, var.env_prod, ":latest")
  }

  restart_policy = "Always"
}

module "gce_container_test" {
  source  = "terraform-google-modules/container-vm/google"
  version = "~> 2.0"

  cos_image_name = var.cos_image_name

  container = {
    image = format("%s/%s/%s-%s%s", "gcr.io", var.project, var.service_name, var.env_test, ":latest")
  }

  restart_policy = "Always"
}

module "gce_container_dev" {
  source  = "terraform-google-modules/container-vm/google"
  version = "~> 2.0"

  cos_image_name = var.cos_image_name

  container = {
    image = format("%s/%s/%s-%s%s", "gcr.io", var.project, var.service_name, var.env_dev, ":latest")
  }

  restart_policy = "Always"
}

resource "google_compute_instance_template" "default" {
  name         = "server-template"
  description  = "Template for machine"
  machine_type = var.instance_machinetype_dev # Default to DEV setting; overwrite in instance template

  instance_description = "Server"
  can_ip_forward       = false

  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
  }

  disk {
    source_image = "cos-cloud/${var.cos_image_name}"
    auto_delete  = true
    boot         = true
    disk_size_gb = 10
  }

  network_interface {
    subnetwork = format("%s-%s", var.subnet_name, var.env_dev) # Default to DEV setting; overwrite in instance template
    access_config {}
  }

  shielded_instance_config {
    enable_secure_boot          = "true"
    enable_vtpm                 = "true"
    enable_integrity_monitoring = "true"
  }

  # Reference: https://cloud.google.com/sdk/gcloud/reference/alpha/compute/instances/set-scopes
  service_account {
    scopes = [
      "https://www.googleapis.com/auth/servicecontrol",
      "https://www.googleapis.com/auth/service.management.readonly",
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring.write",
      "https://www.googleapis.com/auth/trace.append"
    ]
  }
}

resource "google_compute_instance_from_template" "instance-prod" {
  name                     = format("%s-%s", var.instance_name, var.env_prod)
  zone                     = var.zone
  source_instance_template = google_compute_instance_template.default.id

  machine_type = var.instance_machinetype_prod

  labels = {
    environment = "prod"
  }

  # Network tags
  tags = ["http-server", "https-server", "env-prod"]

  network_interface {
    subnetwork = format("%s-%s", var.subnet_name, var.env_prod)
    access_config {}
  }

  metadata = {
    gce-container-declaration = module.gce_container_prod.metadata_value
    google-logging-enabled    = "true"
    google-monitoring-enabled = "true"
  }
}

resource "google_compute_instance_from_template" "instance-test" {
  name                     = format("%s-%s", var.instance_name, var.env_test)
  zone                     = var.zone
  source_instance_template = google_compute_instance_template.default.id

  machine_type = var.instance_machinetype_test

  labels = {
    environment = "test"
  }

  # Network tags
  tags = ["http-server", "https-server", "env-test"]

  network_interface {
    subnetwork = format("%s-%s", var.subnet_name, var.env_test)
    access_config {}
  }

  metadata = {
    gce-container-declaration = module.gce_container_prod.metadata_value
    google-logging-enabled    = "true"
    google-monitoring-enabled = "true"
  }
}

resource "google_compute_instance_from_template" "instance-dev" {
  name                     = format("%s-%s", var.instance_name, var.env_dev)
  zone                     = var.zone
  source_instance_template = google_compute_instance_template.default.id

  machine_type = var.instance_machinetype_dev

  labels = {
    environment = "dev"
  }

  # Network tags
  tags = ["http-server", "https-server", "env-dev"]

  network_interface {
    subnetwork = format("%s-%s", var.subnet_name, var.env_dev)
    access_config {}
  }

  metadata = {
    gce-container-declaration = module.gce_container_prod.metadata_value
    google-logging-enabled    = "true"
    google-monitoring-enabled = "true"
  }
}
