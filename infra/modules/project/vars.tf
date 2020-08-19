variable "zone" {
  description = "GCP zone"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}

variable "gcp_service_list" {
  description = "List of GCP service to be enabled for a project."
  type        = list
}
