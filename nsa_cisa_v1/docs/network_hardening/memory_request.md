# Ensure Containers memory request set

## Description

Containers should have a memory request, so Kubernetes will make sure the containers get the memory they requested.
This policy checks that the containers have a `resources -> requests > memory` set.

This includes Namespaces, DeamonSets, Deployments, Jobs, Pods and ReplicaSets 

## Rationale

It’s important to ensure that an individual container can’t use all the resources on the node, which could cause performance issues for other containers running in the cluster. At the container level, it’s possible to set resource limits that specify the amount of resources needed by the container and the limit on how much resource should be allowed.

