# Kubernetes Pod security

Pods are the smallest deployable Kubernetes unit and consist of one or more
containers. Pods are often a cyber actor’s initial execution environment upon exploiting
a container. For this reason, Pods should be hardened to make exploitation more
difficult and to limit the impact of a successful compromise.

## Recommendations

#### A summary of the key recommendations from this section are:
  - Use containers built to run applications as non-root users
  - Where possible, run containers with immutable file systems
  - Scan container images for possible vulnerabilities or misconfigurations
  - Use a Pod Security Policy to enforce a minimum level of security
    including:
    - Preventing privileged containers
    - Denying container features frequently exploited to breakout, such
    as hostPID, hostIPC, hostNetwork, allowedHostPath
    - Rejecting containers that execute as the root user or allow
    elevation to root
    - Hardening applications against exploitation using security services
    such as SELinux®, AppArmor®, and seccomp