variable "ocm_environment" {
  type    = string
  default = "production"
}

variable "openshift_version" {
  type = string
  default = ""
}

variable "account_role_prefix" {
  type    = string
  default = ""
}

variable "token" {
  type = string
  sensitive = true
}

variable "url" {
  type        = string
  description = "Provide OCM environment by setting a value to url"
  default     = "https://api.openshift.com"
}

variable "path" {
  description = "(Optional) The arn path for the account/operator roles as well as their policies."
  type        = string
  default     = null
}

variable "tags" {
  description = "List of AWS resource tags to apply."
  type        = map(string)
  default     = null
}

variable "operator_role_prefix" {
  type = string
}

variable "cluster_name" {
  type    = string
  default = ""
}

variable "cloud_region" {
  type    = string
  default = "us-east-2"
}

variable "compute_machine_type" {
  type    = string
  default = "m5.xlarge"
}

variable replicas {
    type = number
    default = 2
}

variable multi_az{
    type = bool
    default = "false"
}

variable "availability_zones" {
  type    = list(string)
  default = ["us-east-2a"]
}

variable "aws_subnet_ids" {
  description = "Specify the subnet ID (not name) of the private subnet"
  type    = list(string)
}

variable "machine_cidr" {
  type    = string
  default = ""
}

variable "admin_username" {
  type = string
}

variable "admin_password" {
  type = string
}

variable "AWS_ACCESS_KEY_ID" {
  type = string  
}

variable "AWS_SECRET_ACCESS_KEY" {
  type = string
}

variable "upgrade_acknowledgements_for" {
  description = "Requried for cluster upgades"
  type        = string
  default = ""
}

variable "autoscaling_enabled" {
  type = bool
  default = null
}