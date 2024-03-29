# account_role_prefix = "stp"
# operator_role_prefix = "stp"
# admin_username = "xxx"
# admin_password = "xxx"

cluster_name = "gsb2"
openshift_version = "4.13.10"
replicas = 3
compute_machine_type ="m5.xlarge"
cloud_region = "us-east-2"
multi_az = "true"
machine_cidr = "10.0.0.0/16"

autoscaling_enabled = "true"

#availability_zones = ["${var.cloud_region}a", "${var.cloud_region}b", "${var.cloud_region}c"]  <-- variable not allowed
availability_zones = ["us-east-2a", "us-east-2b", "us-east-2c"]
# NOTE: for aws_subnet_ids, I specified private a,b,c, then public a,b,c. Don't know if this is correct.
aws_subnet_ids = ["subnet-0a73cb33c1f6c7e2f", "subnet-04930ad373bc82008", "subnet-0b445c03ee780b81d", "subnet-09abd79c52e4cab49", "subnet-0685985120fb83ce8", "subnet-085ed46b4a3e0c429"]
# upgrade_acknowledgements_for = "4.13"
# ocm_environment = "local"
# token = 
# url = "https://api.openshift.com"
# tags=<aws_resource_tags>
# ec2_metadata_http_tokens=<required_or_optional>
# path
# tags