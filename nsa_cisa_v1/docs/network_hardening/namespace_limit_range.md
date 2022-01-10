# Namespace LimitRange Default CPU Limit

## Description

A LimitRange is a policy to constrain resource allocations (to Pods or Containers) in a namespace.

See more about Kubernetes limit ranges [here](https://kubernetes.io/docs/concepts/policy/limit-range/) 

## Rationale

A LimitRange provides constraints that can:
 - Enforce minimum and maximum compute resources usage per Pod or Container in a namespace.
 - Enforce minimum and maximum storage request per PersistentVolumeClaim in a namespace.
 - Enforce a ratio between request and limit for a resource in a namespace. Set default request/limit for compute resources in a namespace and automatically inject them to Containers at runtime.
