# Deploy an application to an already existing cluster in gke using Terrform
This uses a multi container pod. with the application and cloud sql auth proxy as the side car container.<br />


container-native ingress is used to apply the health checks directly at the node. <br />

kubernetes secrets are used to apply a user managed tls certificate to the ingress object.

## Required Variables
* project_id : the google project the resources should be provisioned in
* region: the region in which to provision the resources
* namespace: the kubernetes namespace inwhich to create the kubernetes objects.
* deployment_replica: the number of pods to deploy
* container_image: the application image



