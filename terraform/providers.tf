provider "google" {
  project = var.project_id
  region  = var.region
}

terraform {
  backend "gcs" {
    bucket = "terraform-state-prod"
    prefix = "terraform/state"
  }
}
