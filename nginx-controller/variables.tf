variable "google_project_id" {
  default = "get-from-console"
}

variable "google_credentials_json" {
  default = "service-account.json"
}

variable "deployment_environment" {
  default = "dev"
}

variable "deployment_name" {
  default = "dep_name"
}
variable "google_bucket_name" {
}