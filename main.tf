terraform {
  backend "s3" {
    bucket = "locale-file-state"

    endpoints = {
      s3 = "http://127.0.0.1:9000"
    }

    access_key = "root_123"
    secret_key = "root_123"

    key                         = "bbc/terraform-provision.tfstate"
    region                      = "main"
    skip_requesting_account_id  = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    use_path_style              = true
  }
}

resource "local_file" "test_s3" {
  filename = "./test_s3.txt"
  content = "hello"
}