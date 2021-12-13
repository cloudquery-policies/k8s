policy "k8s" {
  description = "Kubernetes Security & Compliance"

  configuration {
    provider "k8s" {
      version = ">= 0.3.0"
    }
  }

  policy "nsa_cisa_v1" {
    description = "NSA and CISA Kubernetes Hardening Guidance v1.0"
    source      = file("nsa_cisa_v1/policy.hcl")
  }
}
