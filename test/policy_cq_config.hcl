// Configuration AutoGenerated by CloudQuery CLI
cloudquery {
  plugin_directory = "./cq/providers"
  policy_directory = "./cq/policies"

  provider "azure" {
    source  = "cloudquery/cq-provider-k8s"
    version = "latest"
  }

  connection {
    dsn = "host=localhost user=postgres password=pass database=postgres port=5432 sslmode=disable"
  }
}

// All Provider Configurations
provider "k8s" {
  configuration {}
  resources = [
  "*"]
}

policy "k8s-policy-pack" {
  source = "./policy.hcl"
}