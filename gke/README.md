# implement a Cluster On GKE Using Terraform
This creates a muti-zonal VPC-native cluster, a detached node pool for the cluster with pod auto scaling, <br /> 
https loadbalancing and workload identity enabled.

## Required Variables
* project_id: the project in which to provision the cluster
* region: the region in which to provision the cluster
* zone : the zone in which to provision the clluster
* cluster_name : the name of the cluster you want to provision
* node_zones: list of the zones in which to provision the node.

## Other variables
these variables have default values that can be overwritten.
* roles: the roles to be applied to the custom service account for the nodes. defaults to the following:
    1. roles/artifactregistry.reader
    2. roles/storage.objectViewer
    3. roles/servicemanagement.serviceController
    4. roles/logging.logWriter
    5. roles/monitoring.admin
    6. roles/cloudtrace.agent


