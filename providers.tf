provider "google" {
  project     = "targaryen-12345"
  region      = "us-central1"
}

terraform {
  required_providers {
    google = {
      version = "~> 4.50.0"
    }
  }
  backend "gcs" {
    bucket = "terrafom-remote-backend-bucket"
    prefix = "remote-backend/staging/"
  }
}