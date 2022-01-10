# Enforce CPU Limits

## Description

Containers should have a CPU limit which restricts the container to not use more than a given amount of CPU.
This policy checks that the containers have a `resources -> limits > cpu` set.

This includes Namespaces, DeamonSets, Deployments, Jobs, Pods and ReplicaSets 

## Rationale

It’s important to ensure that an individual container can’t use all the resources on the node, which could cause performance issues for other containers running in the cluster. At the container level, it’s possible to set resource limits that specify the amount of resources needed by the container and the limit on how much resource should be allowed.