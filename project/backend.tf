# Configure the Google Cloud tfstate file location
terraform {
  backend "gcs" {
    // bucket = "terraform-admin-demo"
    bucket = "db-ws9kiam-admin"
    prefix = "terraform-project"
  }
}
