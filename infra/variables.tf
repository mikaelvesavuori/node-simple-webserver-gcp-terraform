# EDIT THIS TO YOUR VALUE!
variable "project" {
  description = "GCP project"
  type        = string
  default     = "YOUR_PROJECT_ID"
}

# EDIT THESE IF YOU WANT
variable "region" {
  description = "GCP region. Default is 'europe-west1' (Belgium)"
  type        = string
  default     = "europe-west1"
}

variable "zone" {
  description = "GCP zone. Default is 'europe-west1-b' (Belgium)"
  type        = string
  default     = "europe-west1-b"
}

variable "service_name" {
  description = "Service name"
  type        = string
  default     = "nodesimplewebserver"
}

variable "env_prod" {
  description = "Environment (PROD)"
  type        = string
  default     = "prod"
}

variable "env_test" {
  description = "Environment (TEST)"
  type        = string
  default     = "test"
}

variable "env_dev" {
  description = "Environment (DEV)"
  type        = string
  default     = "dev"
}

# Would be nicer, but skipping for now since it makes some assumptions
#variable "env" {
#  description = "Workspace env"
#  type        = string
#  default     = terraform.workspace
#}
