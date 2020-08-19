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

variable "billing_account_name" {
  description = "Name/ID of billing account"
  type        = string
}
