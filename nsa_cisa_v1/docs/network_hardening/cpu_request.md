# CPU Request

## Description

Containers should have a CPU requests so Kubernetes will make sure the containers get the CPU they requested.
This policy checks that the containers have a `resources -> requests > cpu` set.

This includes Namespaces, DeamonSets, Deployments, Jobs, Pods and ReplicaSets 

## Rationale

When you specify the resource request for containers, the kube-scheduler uses this information to decide which node to place the Pod on.
It’s important to ensure that an individual container can’t use all the resources on the node, which could cause performance issues for other containers running in the cluster. At the container level, it’s possible to set resource limits that specify the amount of resources needed by the container and the limit on how much resource should be allowed.