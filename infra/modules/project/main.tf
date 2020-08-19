data "google_billing_account" "billing_account" {
  display_name = var.billing_account_id
  open         = true
}

resource "google_project" "project" {
  name       = var.name
  project_id = var.project_id
  #org_id     = var.org_id

  billing_account = data.google_billing_account.billing_account.id
}

# Project APIs
resource "google_project_service" "gcp_services" {
  depends_on = [
    google_project.project
  ]

  count   = length(var.gcp_service_list)
  project = google_project.project.project_id
  service = var.gcp_service_list[count.index]

  disable_dependent_services = true
}

# Service account for Compute
data "google_iam_policy" "iam_compute" {
  binding {
    role = "roles/iam.serviceAccountUser"

    members = [
      "user:jane@example.com",
    ]
  }
}

resource "google_service_account" "sa_compute" {
  account_id   = "my-app-service-account-compute"
  display_name = "A service account that..."
}

resource "google_service_account_iam_policy" "admin-account-iam" {
  service_account_id = google_service_account.sa_compute.name
  policy_data        = data.google_iam_policy.iam_compute.policy_data
}
