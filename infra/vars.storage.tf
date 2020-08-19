variable "bucket_name" {
  description = "Bucket name"
  type        = string
}

variable "bucket_location" {
  description = "Bucket location"
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
