variable "cloudbuild_repo" {
  description = "Repository name"
  type        = string
}

variable "cloudbuild_filename" {
  description = "Cloud Build configuration filename"
  type        = string
}

variable "cloudbuild_trigger_name" {
  description = "Trigger name (env will be added dynamically at end)"
  type        = string
}

variable "cloudbuild_branch_prod" {
  description = "Branch name (PROD)"
  type        = string
}

variable "cloudbuild_branch_test" {
  description = "Branch name (TEST)"
  type        = string
}

variable "cloudbuild_branch_dev" {
  description = "Branch name (DEV)"
  type        = string
}
