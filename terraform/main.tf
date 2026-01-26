terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = "your-project-id"
  region  = "us-central1"
}

resource "google_storage_bucket" "data_bucket" {
  name          = "de-zoomcamp-hw1-bucket"
  location      = "US"
  force_destroy = true
}

resource "google_bigquery_dataset" "dataset" {
  dataset_id = "ny_taxi"
  location   = "US"
}
