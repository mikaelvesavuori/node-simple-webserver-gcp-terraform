variable "project" {
  description = "GCP project"
  type        = string
}

variable "region" {
  description = "GCP region. Default is 'europe-west1' (Belgium)"
  type        = string
}

variable "zone" {
  description = "GCP zone. Default is 'europe-west1-b' (Belgium)"
  type        = string
}

variable "repo" {
  description = "Repository name"
  type        = string
}

variable "filename" {
  description = "Cloud Build configuration filename"
  type        = string
}

variable "trigger_name" {
  description = "Trigger name (env will be added at end)"
  type        = string
}

variable "instance_name" {
  description = "Instance name (env will be added at end)"
  type        = string
}

variable "service_name" {
  description = "Service name"
  type        = string
}

# PROD
variable "env_prod" {
  description = "Environment (PROD)"
  type        = string
}

variable "branch_prod" {
  description = "Branch name (PROD)"
  type        = string
}

# TEST
variable "env_test" {
  description = "Environment (TEST)"
  type        = string
}

variable "branch_test" {
  description = "Branch name (TEST)"
  type        = string
}

# DEV
variable "env_dev" {
  description = "Environment (DEV)"
  type        = string
}

variable "branch_dev" {
  description = "Branch name (DEV)"
  type        = string
}
