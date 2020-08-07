variable "cloudbuild_repo" {
  description = "Repository name"
  type        = string
  default     = "webserver"
}

variable "cloudbuild_filename" {
  description = "Cloud Build configuration filename"
  type        = string
  default     = "cloudbuild.appengine.yaml"
}

variable "cloudbuild_trigger_name" {
  description = "Trigger name (env will be added dynamically at end)"
  type        = string
  default     = "webserver-trigger"
}

# PROD
variable "cloudbuild_branch_prod" {
  description = "Branch name (PROD)"
  type        = string
  default     = "master"
}

# TEST
variable "cloudbuild_branch_test" {
  description = "Branch name (TEST)"
  type        = string
  default     = "test"
}

# DEV
variable "cloudbuild_branch_dev" {
  description = "Branch name (DEV)"
  type        = string
  default     = "dev"
}
