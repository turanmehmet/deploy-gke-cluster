# Deploy GKE Cluster with Nginx Controller
Creates a cluster in Google Cloud and install and Ingress Controller using Nginx Ingress Controller

## Deploy GKE Cluster
Let's start with deploying our cluster first

### Create Service account

Go to your google console > IAM > Service Account

Create your service account with Basic and Owner type. This will give us full access to our cloud account

Create a key in json format and copy the content

Create the following file in the gke-cluster directory called

`service-account.json`

and paste it in this json file.

