# Azure CIS v1.3.0 Benchmark
This CloudQuery policy implements the Kubernetes Hardening guidelines.
National Security Agency
Cybersecurity and Infrastructure Security Agency

## Overview

USA's National Security Agency (NSA) and the Cybersecurity and Infrastructure Security Agency (CISA) released, ["Kubernetes Hardening Guidance"](https://media.defense.gov/2021/Aug/03/2002820425/-1/-1/1/CTR_KUBERNETES%20HARDENING%20GUIDANCE.PDF) on August 3rd, 2021. The guidance details threats to Kubernetes environments and provides secure configuration guidance to minimize risk.

The following checks of this policy correlate to the sections in the NSA/CISA guidance.


## Running

```bash
cloudquery policy run k8s//nsa_cisa_v1
```