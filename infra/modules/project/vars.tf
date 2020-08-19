variable "zone" {
  description = "GCP zone"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}

variable "name" {
  description = "Project name"
  type        = string
}

variable "project_id" {
  description = "Project ID"
  type        = string
}

variable "gcp_service_list" {
  description = "List of GCP service to be enabled for a project."
  type        = list
}

variable "billing_account_id" {
  description = "Name/ID of billing account"
  type        = string
}

variable "service_account_compute_prod" {
  description = "Service account for Compute Engine (PROD)"
  type        = string
}

variable "service_account_compute_test" {
  description = "Service account for Compute Engine (TEST)"
  type        = string
}

variable "service_account_compute_dev" {
  description = "Service account for Compute Engine (DEV)"
  type        = string
}
