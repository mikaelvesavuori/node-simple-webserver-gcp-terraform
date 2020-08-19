# EDIT THIS TO YOUR VALUES!
variable "server_image_name_base" {
  description = "Image name for the image (DO NOT SPECIFY ENV OR TAG! env and tag will be added dynamically to end)"
  type        = string
}

# Reference: https://cloud.google.com/container-optimized-os/docs/release-notes
variable "cos_image_name" {
  description = "The forced COS image to use instead of latest"
  type        = string
}

variable "disk_size" {
  description = "Disk size"
  type        = number
}

variable "disk_type" {
  description = "Disk type"
  type        = string
}

variable "instance_name" {
  description = "Instance name (env will be added dynamically to end)"
  type        = string
}

variable "subnet_name" {
  description = "Subnet name (env will be added dynamically to end)"
  type        = string
}

# ENV specifics
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
