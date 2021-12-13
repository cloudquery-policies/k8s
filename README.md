# Kubernetes Security & Compliance CloudQuery policy pack

Official Kubernetes security &amp; compliance policy pack for CloudQuery.

## Included Policies

- NSA and CISA Kubernetes Hardening Guidance v1.0

## Quick Start

### Prerequisite

1. [Install CloudQuery](https://docs.cloudquery.io/docs/getting-started)
2. [Install Kubernetes Provider](https://docs.cloudquery.io/docs/cli/fetch/overview)
3. [Fetch](https://hub.cloudquery.io/providers/cloudquery/k8s/latest)

### Running

```bash
# Describe what is available in the policy pack
cloudquery policy describe kubernetes

# Run the whole pack
cloudquery policy run kubernetes
```
