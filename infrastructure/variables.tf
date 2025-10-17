variable "credentials" {
  description = "My key credentials file"
  default     = "~/.google/credentials/calobeto-portafolio-creds.json"
}

variable "project" {
  description = "Project"
  default     = "calobeto-portafolio"
}

variable "region" {
  description = "Default region for provider"
  default     = "southamerica-west1"
}

variable "location" {
  description = "Location for BigQuery and GCS"
  default     = "southamerica-west1"
}

variable "gcs_bucket_name" {
  description = "My Storage bucket name"
  default     = "calobeto-metropolitano-datasets"
}


