policy "k8s" {
  title ="Kubernetes Security & Compliance"
  doc = file("README.md")
  configuration {
    provider "k8s" {
      version = ">= 0.3.0"
    }
  }

  policy "nsa_cisa_v1" {
    title ="NSA and CISA Kubernetes Hardening Guidance v1.0"
    source      = file("nsa_cisa_v1/policy.hcl")
  }
}
