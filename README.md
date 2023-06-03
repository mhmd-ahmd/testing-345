
## how to use
Each submodule should be treated as a different apply operation. 
The cluster and the SQL instance must be provisioned before creating the kubernetes objects as it depends on both.<br /> 
Each submodule contains a README.md file that gives module specific information.


## state remote Backend
Each submodule stores its statefiles, variables and environment variables in a terraform cloud workspace. <br />
To store the statefile locally, delete the terraform backend block and run terraform init

The service account key to authenticate terraform to the google provider is stored as the environment <br />
variable GOOGLE_CREDENTIALS in each workspace.



