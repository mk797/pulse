terraform {
  backend "gcs" {
    bucket = "pulse-tf-file-storage-dev"
    prefix = "dev/terraform.tfstate"
    
  }
}