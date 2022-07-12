terraform {
  required_version = ">= 1.2.4"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.24.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.11.0"
    }
  }
}

provider "random" {}

resource "random_id" "id" {
  byte_length = 4
  prefix      = "terraform-${var.project_name[terraform.workspace]}-"
}

resource "google_project" "project" {
  name            = "terraform-${var.project_name[terraform.workspace]}"
  project_id      = "${random_id.id.hex}"
  billing_account = "${var.billing_account}"
  org_id          = "${var.org_id}"
}

resource "google_project_service" "project" {
  project = "${google_project.project.project_id}"
  count   = length(var.project_service)
  service = element(var.project_service, count.index)
  disable_on_destroy         = false
  disable_dependent_services = false
}
