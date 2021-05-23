# Deploy GKE Cluster with Nginx Controller
Creates a cluster in Google Cloud and install and Ingress Controller using Nginx Ingress Controller

## 1. Deploy GKE Cluster
Let's start with deploying our cluster first

### 1.1. Create Service account

Go to your google console > IAM > Service Account. Create your service account with Basic and Owner type. This will give us full access to our cloud account. Create a key in json format and copy the content

Create the following file in the gke-cluster directory called

`service-account.json`

and paste it in this json file.

### 1.2. Create a bucket

Go to your cloud storage and create a bucket.

### 1.3. Create tfvars

In the gke-cluster directory create a new file with a name called `gke-cluster.tfvars` and edit the following values

```
google_project_id        = "PROJECT ID"
cluster_version          = "1.17"
google_bucket_name       = "bucket_name"
deployment_environment   = "dev"
google_credentials_json  = "service-account.json"
deployment_name          = "gke-cluster"
google_region            = "us-central1-a"
cluster_name             = "cluster1"
cluster_node_count       = 2
```

### 1.4 Initializing the backend configuration and terraform

Run the following command in the gke-cluster directory to set the backend.tf file and state file in the cloud storage. This script will also run `terraform init` command. 

```
source set-env.sh gke-cluster.tfvars
```

### 1.5 Creating the cluster

And the last step is to apply terraform configuration. To do that run the following command

```
terraform apply -var-file=gke-cluster.tfvars
```
It should complete creating the cluster in about 3 mins. 