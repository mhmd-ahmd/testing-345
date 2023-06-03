// state the providers and versions used in the project
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">=3.89.0"
    }
  }
}

// configure the terraform backend to use a workspace in terraform cloud
terraform {
  backend "remote" {
    organization = "testing-234"

    workspaces {
      name = "sca-cluster"
    }
  }
}

// configure the providers
// the google cloud credential is storeed as the environment variable GOOGLE_CREDENTIAL in the terraform workspace
provider "google-beta" {
  project = "azuregcp12"
  region  = "us-central1"
}