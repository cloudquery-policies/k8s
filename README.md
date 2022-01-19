# Kubernetes Security & Compliance CloudQuery policy pack

Official Kubernetes security &amp; compliance policy pack for CloudQuery.


## What is CloudQuery

The [open-source](https://github.com/cloudquery/cloudquery) cloud asset inventory powered by SQL.

CloudQuery extracts, transforms, and loads your cloud assets into normalized PostgreSQL tables. CloudQuery enables you to assess, audit, and evaluate the configurations of your cloud assets.

### Links
* Homepage: https://cloudquery.io
* Documentation: https://docs.cloudquery.io
* CloudQuery Hub (providers & policies documentation): https://hub.cloudquery.io/
* Discord: https://cloudquery.io/discord

## Included Policies

- NSA and CISA Kubernetes Hardening Guidance v1.0

## Quick Start

### Prerequisite
1. [Install CloudQuery](https://docs.cloudquery.io/docs/getting-started)

```bash 
# install with brew
brew install cloudquery/tap/cloudquery
# or download precompiled binaries from https://github.com/cloudquery/cloudquery/releases
```

2. [Download and Configure K8S Provider](https://docs.cloudquery.io/docs/cli/fetch/overview)

```bash
cloudquery init k8s
```

3. [Fetch](https://hub.cloudquery.io/providers/cloudquery/k8s/latest)

```bash
# connect or run  a local PostgreSQL
docker run -p 5432:5432 -e POSTGRES_PASSWORD=pass -d postgres
# extract your cloud infra configuration
cloudquery fetch
```

### Running

```bash
# Describe what is available in the policy pack
cloudquery policy describe k8s

# Run the whole pack
cloudquery policy run k8s

# Run specific policy
cloudquery policy run k8s//nsa_cisa_v1
```
