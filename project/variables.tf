# GCP variables
variable "region" {
  // default     = "asia-southeast1"
  default     = "us-central1"
  description = "Region of resources"
}

variable "project_name" {
  #  default     = "test"

  default = {
    dev  = "dev"
    prod = "prod"
  }
  description = "The Name of the Google Cloud project"
}

variable "billing_account" {
  description = "Billing account STRING."
}

variable "org_id" {
  description = "Organisation account NR."
}

variable "project_service" {
  type = list
  description = "The GCP APIs that should be enabled in this project."
  default = [
    "bigquery.googleapis.com",
    "compute.googleapis.com",
    "container.googleapis.com",
    "containerregistry.googleapis.com",
    "deploymentmanager.googleapis.com",
    "dns.googleapis.com",
    "logging.googleapis.com",
    "monitoring.googleapis.com",
    "oslogin.googleapis.com",
    "pubsub.googleapis.com",
    "replicapool.googleapis.com",
    "replicapoolupdater.googleapis.com",
    "resourceviews.googleapis.com",
    "servicemanagement.googleapis.com",
    "sql-component.googleapis.com",
    "sqladmin.googleapis.com",
    "storage-api.googleapis.com",
  ]
}
