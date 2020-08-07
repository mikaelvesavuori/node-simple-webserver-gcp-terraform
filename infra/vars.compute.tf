# EDIT THIS TO YOUR VALUES!
variable "server_image_name_base" {
  description = "Image name for the image (DO NOT SPECIFY ENV OR TAG! env and tag will be added dynamically to end)"
  type        = string
  default     = "gcr.io/YOUR_PROJECT_ID/YOUR_SERVICE"
}

# Reference: https://cloud.google.com/container-optimized-os/docs/release-notes
variable "cos_image_name" {
  description = "The forced COS image to use instead of latest"
  type        = string
  default     = "cos-stable-81-12871-1174-0"
}

variable "disk_size" {
  description = "Disk size"
  type        = number
  default     = 10
}

variable "disk_type" {
  description = "Disk type"
  type        = string
  default     = "pd-ssd"
}

variable "instance_name" {
  description = "Instance name (env will be added dynamically to end)"
  type        = string
  default     = "webserver-instance"
}

variable "subnet_name" {
  description = "Subnet name (env will be added dynamically to end)"
  type        = string
  default     = "subnet"
}

# ENV specifics
variable "instance_machinetype_prod" {
  description = "Instance machine type (PROD)"
  type        = string
  default     = "n2-standard-16"
}

variable "instance_machinetype_test" {
  description = "Instance machine type (TEST)"
  type        = string
  default     = "n2-standard-2"
}

variable "instance_machinetype_dev" {
  description = "Instance machine type (DEV)"
  type        = string
  default     = "n2-standard-2"
}
