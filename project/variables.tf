# GCP variables
variable "region" {
  // default     = "asia-southeast1"
  default     = "us-central1"
  description = "Region of resources"
}

//variable "zone" {
//  description = "Zone of resources"
//  default     = "us-central1-b"
//}


variable "project_name" {
  #  default     = "test"

  default = {
    dev  = "dev"
    prod = "prod"
  }

  description = "The NAME of the Google Cloud project"
}

variable "billing_account" {
  description = "Billing account STRING."
}

variable "org_id" {
  description = "Organisation account NR."
}
