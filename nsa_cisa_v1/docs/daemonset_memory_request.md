# DaemonSet Memory Request

## Description

Containers should have a memory request, so Kubernetes will make sure the containers get the memory they requested.

## Rationale

Containers in a DaemonSet should have memory request which enables Kubernetes to make sure your containers get the memory they requested.
