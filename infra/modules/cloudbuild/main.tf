resource "google_cloudbuild_trigger" "cloudbuild-prod" {
  name     = format("%s-%s", var.trigger_name, var.env_prod)
  filename = var.filename

  trigger_template {
    branch_name = var.branch_prod
    repo_name   = var.repo
  }

  substitutions = {
    _PROJECT  = var.project
    _REGION   = var.region
    _ZONE     = var.zone
    _REPO     = var.repo
    _INSTANCE = format("%s-%s", var.instance_name, var.env_prod)
    _ENV      = var.env_prod
    _SERVICE  = var.service_name
  }
}

resource "google_cloudbuild_trigger" "cloudbuild-test" {
  name     = format("%s-%s", var.trigger_name, var.env_test)
  filename = var.filename

  trigger_template {
    branch_name = var.branch_test
    repo_name   = var.repo
  }

  substitutions = {
    _PROJECT  = var.project
    _REGION   = var.region
    _ZONE     = var.zone
    _REPO     = var.repo
    _INSTANCE = format("%s-%s", var.instance_name, var.env_test)
    _ENV      = var.env_test
    _SERVICE  = var.service_name
  }
}

resource "google_cloudbuild_trigger" "cloudbuild-dev" {
  name     = format("%s-%s", var.trigger_name, var.env_dev)
  filename = var.filename

  trigger_template {
    branch_name = var.branch_dev
    repo_name   = var.repo
  }

  substitutions = {
    _PROJECT  = var.project
    _REGION   = var.region
    _ZONE     = var.zone
    _REPO     = var.repo
    _INSTANCE = format("%s-%s", var.instance_name, var.env_dev)
    _ENV      = var.env_dev
    _SERVICE  = var.service_name
  }
}
