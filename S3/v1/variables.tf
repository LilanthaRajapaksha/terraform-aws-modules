variable "bucket_name" {
  description = "The name of the bucket"
  type        = string
}

variable "bucket_description" {
  type        = string
  description = "The description of the bucket"
}

variable "custom_tags" {
  description = "Tags for the S3 bucket"
  type        = map(string)
  default     = null
}
