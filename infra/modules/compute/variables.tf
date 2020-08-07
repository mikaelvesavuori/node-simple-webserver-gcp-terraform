variable "zone" {
  description = "GCP zone"
  type        = string
}

variable "project" {
  description = "GCP project"
  type        = string
}

variable "service_name" {
  description = "Service name"
  type        = string
}

# Envs
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

# Settings
variable "cos_image_name" {
  description = "The forced COS image to use instead of latest"
  type        = string
}

variable "server_image_name_base" {
  description = "Image name for the image (NO ENV OR TAG! env will be added dynamically to end)"
  type        = string
}

variable "disk_type" {
  description = "Disk type"
  type        = string
}

variable "disk_size" {
  description = "Disk size"
  type        = number
}

# Names
variable "instance_name" {
  description = "Instance name (env will be added dynamically to the end)"
  type        = string
}

# Machine types
variable "instance_machinetype_prod" {
  description = "Instance machine type (PROD)"
  type        = string
}

variable "instance_machinetype_test" {
  description = "Instance machine type (TEST)"
  type        = string
}

variable "instance_machinetype_dev" {
  description = "Instance machine type (DEV)"
  type        = string
}

# Subnets
variable "subnet_name" {
  description = "Subnet name (env will be added dynamically to the end)"
  type        = string
}
