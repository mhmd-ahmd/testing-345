
variable "roles" {
  type = list(string)
  default = [
    "roles/artifactregistry.reader",
    "roles/storage.objectViewer",
    "roles/servicemanagement.serviceController",
    "roles/logging.logWriter",
    "roles/monitoring.admin",
    "roles/cloudtrace.agent"
  ]
  description = "list of roles for the node pool service account."
}

variable "project_id" {
  type        = string
  default     = "azuregcp12"
  description = "current project_id"
}

variable "region" {
  default = "us-central1"
  type    = string
}

variable "zone" {
  default = "us-central1-a"
  type    = string
}

variable "cluster_name" {
  type        = string
  default     = "testing"
  description = "name of cluster to be created"
}

variable "cluster_zone" {
  type        = string
  default     = "us-central1-a"
  description = "zone in which to create the cluster"
}

variable "master_version" {
  type        = string
  default     = "1.20.10-gke.301"
  description = "cluster master version"
}

variable "node_zones" {
  type        = list(string)
  default     = ["us-central1-a", "us-central1-b", "us-central1-c"]
  description = "location of nodes in nodepool/cluster"
}

variable "machine_type" {
  type        = string
  default     = "g1-small"
  description = "type of nodes in node pool"

}

