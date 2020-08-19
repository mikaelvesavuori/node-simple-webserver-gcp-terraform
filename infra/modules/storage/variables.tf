variable "name" {
  description = "Bucket name"
  type        = string
}

variable "location" {
  description = "Bucket location"
  type        = string
}

variable "max_age_prod" {
  description = "Max age in days (PROD)"
  type        = string
}

variable "max_age_test" {
  description = "Max age in days (TEST)"
  type        = string
}

variable "max_age_dev" {
  description = "Max age in days (DEV)"
  type        = string
}

variable "storage_name_prod" {
  description = "Storage name (PROD)"
  type        = string
}

variable "storage_name_test" {
  description = "Storage name (TEST)"
  type        = string
}

variable "storage_name_dev" {
  description = "Storage name (DEV)"
  type        = string
}
