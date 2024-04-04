output "api_url" {
    #value = rhcs_cluster_rosa_classic.rosa_sts_cluster.api_url
    value = join("", ["https://api.",rhcs_cluster_rosa_classic.rosa_sts_cluster.domain,":6443"])
}

output "console_url" {
    #value = rhcs_cluster_rosa_classic.rosa_sts_cluster.console_url
    value = join("", ["https://console-openshift-console.apps.",rhcs_cluster_rosa_classic.rosa_sts_cluster.domain])
}

output "domain" {
    value = rhcs_cluster_rosa_classic.rosa_sts_cluster.domain
}

output "admin_username" {
    value = rhcs_cluster_rosa_classic.rosa_sts_cluster.admin_credentials.username
    sensitive = false
}

output "admin_password" {
    value = rhcs_cluster_rosa_classic.rosa_sts_cluster.admin_credentials.password
    sensitive = true
}

