variable "database_version" {
  type        = string
  default     = "POSTGRES_13"
  description = "type of database and version"

}

variable "region" {
  default     = "us-central1"
  type        = string
  description = "the database region"
}
variable "availability" {
  type    = string
  default = "ZONAL"
}

variable "tier" {
  type        = string
  default     = "db-f1-micro"
  description = "machine type for the instance"
}

variable "database_name" {
  default     = "test"
  type        = string
  description = "name of the database to create in the instance"
}

variable "db_user" {
  default     = "test"
  type        = string
  description = "user for the instance"
}

variable "db_pass" {
  default     = "p@ssword"
  type        = string
  description = "database user's password"
}

variable "project_id" {
  default = "pure-genius-341209"
  type    = string
}

variable "prefix_length" {
  type        = number
  default     = 16
  description = "netmask for the vpc peering ip range"
}