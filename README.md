## Deploy a ROSA Cluster Via VCS Driven Workflow
In this deployment model, the Terraform configuration for deploying ROSA clusters are stored in a private GitHub repository.

### Configure the ROSA OpenShift Version
Update the `prod.auto.tfvars` file with the desired OpenShift version. Available versions can be found using the following command.
```bash
rosa login
rosa list versions | head
```
After updating the file, push the changes to GitHub. This will trigger a new run in Terraform Cloud.
### Terraform Run Monitoring
After approving the run, you can monitor the installation log in the TF Cloud UI and using the following commands.
```bash
rosa list clusters
rosa logs install -c <cluster_name> --watch

```
### Cluster Admin Login
Obtain the OpenShift API endpoint.
```bash
rosa describe cluster -c <cluster_name>
-or-
rosa describe cluster -c <cluster_name> -o json | jq -r .api.url
```
Login to the cluster using the URL obtained above. 
```bash
oc login <url> --username <admin_username> --password <admin_password> --insecure-skip-tls-verify=true
```
### Upgrading a ROSA Cluster
Update the `prod.auto.tfvars` file with the desired OpenShift version and push the changes to GitHub. This will trigger a new run in Terraform Cloud. After approving the run, the scheduled upgrade can be monitored using the following. 
```bash
rosa list upgrades -c <cluster_name>
rosa describe cluster -c <cluster_name> -o json | jq .scheduledUpgrade
rosa describe cluster -c <cluster_name> -o json | jq .openshift_version
```

### Uninstall the ROSA Cluster Via VCS Driven Workflow
Comment out resources in `main.tf` and push the changes to GitHub. This will trigger a new run in Terraform Cloud. After approving the run, you can monitor the uninstall in the TF Cloud UI and using the following command.
```bash
rosa logs uninstall -c <cluster_name> --watch
```