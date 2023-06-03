variable "project_id" {
  type        = string
  default     = "azuregcp12"
  description = "current project_id"
}

variable "region" {
  default = "us-central1"
  type    = string
}

variable "namespace" {
  type        = string
  default     = "testing"
  description = "namespace where the kubernetes objects will be created"
}

variable "db_host" {
  type        = string
  default     = "127.0.0.1"
  description = "database host"
}

variable "api_key" {
  type        = string
  default     = "968chVWIv7uO1g.atlasv1.5yoU6hHo3mIxGKi1ykMFa7ppjkW14b0TfiNHqmxz6MF31CveaY37zBzoZArEsh7Of70"
  description = "credentials for accessing the iex api"
}

variable "deployment_replica" {
  type        = number
  default     = 1
  description = "number of pods in the deployment"
}

variable "container_image" {
  type        = string
  default     = "dockersamples/link-shortener-django:latest"
  description = "container image to run in the pod"
}

variable "roles" {
  type        = list(string)
  default     = ["roles/cloudsql.client"]
  description = "for authenticating the cloud sql proxy side car container"
}

variable "tls_crt" {
  type        = string
  default     = "$./.tls/revevellidan.com_ssl_certificate.cer"
  description = "tls certificate"
}

variable "tls_key" {
  type        = string
  default     = "./.tls/_.revevellidan.com_private_key.key"
  description = "tls key"
}