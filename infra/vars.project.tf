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
