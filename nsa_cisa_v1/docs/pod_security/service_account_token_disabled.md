# Service account token disabled

## Description

Automatic mapping of service account token should be disabled. 

## Rationale 


By default, Kubernetes automatically provisions a service account when creating a Pod and mounts the account’s secret token within the Pod at runtime. Many containerized applications do not require direct access to the service account as Kubernetes orchestration occurs transparently in the background.

If an application is compromised, account tokens in Pods can be gleaned by cyber actors and used to further compromise the cluster. When an application does not need to access the service account directly, Kubernetes administrators should ensure that Pod specifications disable the secret token being mounted. This can be accomplished using the automountServiceAccountToken: false directive in the Pod’s YAML specification."