# Namespace Resource Quota

## Description

A resource quota, defined by a ResourceQuota object, provides constraints that limit aggregate resource consumption per namespace. It can limit the quantity of objects that can be created in a namespace by type, as well as the total amount of compute resources that may be consumed by resources in that namespace.

See more about Kubernetes resource quotas [here](https://kubernetes.io/docs/concepts/policy/resource-quotas/)

## Rationale

Containers should have Resource Quoute limit which restricts the container to not use more than a given amount of a resource (cpu limit/request, memory limit/request).
