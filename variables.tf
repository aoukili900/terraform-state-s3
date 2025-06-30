variable "s3_endpoint" {
  type    = string
  default = "127.0.0.1:9000"
}

variable "s3_bucket" {
  type    = string
  default = "locale-file-state"
}

variable "s3_key" {
  type    = string
  default = "terraform.tfstate"
}

variable "s3_region" {
  type    = string
  default = "us-east-1"
}

variable "s3_access_key_id" {
  type    = string
  default = "root_123"
}

variable "s3_secret_access_key" {
  type    = string
  default = "root_123"
}

variable "s3_skip_region_validation" {
  type    = bool
  default = true
}

variable "s3_skip_credentials_validation" {
  type    = bool
  default = true
}