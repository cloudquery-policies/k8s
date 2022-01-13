policy "nsa_cisa_v1" {
  title = "NSA and CISA Kubernetes Hardening Guidance v1.0"
  doc   = file("nsa_cisa_v1/README.md")
  configuration {
    provider "k8s" {
      version = ">= v0.3.0"
    }
  }

  policy "pod_security" {
    source = file("nsa_cisa_v1/pod_security.hcl")
  }

  policy "network_hardening" {
    source = file("nsa_cisa_v1/network_hardening.hcl")
  }
}
