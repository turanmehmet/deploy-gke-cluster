module "gke_cluster" {
    source                   = "/module"
    google_project_id        = var.google_project_id
    cluster_name             = var.cluster_name
    cluster_version          = var.cluster_version
    cluster_node_count       = var.cluster_node_count
    google_region            = var.google_region
    google_bucket_name       = var.google_bucket_name
    deployment_environment   = var.deployment_environment
    deployment_name          = var.deployment_name
    google_credentials_json  = var.google_credentials_json
}



