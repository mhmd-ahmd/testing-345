// list providers
terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.6.1"
    }
    random = {
      source = "hashicorp/random"
    }
    google = {
      source  = "hashicorp/google"
      version = ">=3.89.0"
    }
  }
}

terraform {
  backend "remote" {
    organization = "testing-234"

    workspaces {
      name = "sca-kubernetes"
    }
  }
}


// configure providers
provider "google" {
  project = var.project_id
  region  = var.region
}

provider "kubernetes" {
  host  = "https://${data.google_storage_bucket_object_content.cluster_endpoint.content}"
  token = data.google_client_config.default.access_token
  cluster_ca_certificate = base64decode(
    data.google_storage_bucket_object_content.cluster_cert.content,
  )
}

