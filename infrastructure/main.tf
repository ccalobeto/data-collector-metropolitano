terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.43.0"
    }
  }
}

provider "google" {
  credentials = file(var.credentials)
  project     = var.project
  region      = var.region
}

# GCS bucket
resource "google_storage_bucket" "metropolitano_bucket" {
  name                        = var.gcs_bucket_name
  location                    = var.location
  force_destroy               = false
  uniform_bucket_level_access = true
}

# Grant public read access to the bucket's objects
resource "google_storage_bucket_iam_member" "public_read_objects" {
  bucket = google_storage_bucket.metropolitano_bucket.name
  role   = "roles/storage.objectViewer"
  member = "allUsers"
}

