variable "project" {
  description = "GCP project"
  type        = string
}

variable "gcp_service_list" {
  description = "List of GCP service to be enabled for a project."
  type        = list
}

variable "region" {
  description = "GCP region. Default is 'europe-west1' (Belgium)"
  type        = string
}

variable "zone" {
  description = "GCP zone. Default is 'europe-west1-b' (Belgium)"
  type        = string
}

variable "service_name" {
  description = "Service name"
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

variable "billing_account_id" {
  description = "Name/ID of billing account"
  type        = string
}

variable "env_prod" {
  description = "Environment (PROD)"
  type        = string
}

variable "env_test" {
  description = "Environment (TEST)"
  type        = string
}

variable "env_dev" {
  description = "Environment (DEV)"
  type        = string
}
