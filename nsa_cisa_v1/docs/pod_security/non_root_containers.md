# Non root containers

## Description

Enforce `MustRunAsNonRoot` is set to `true` on containers

This includes DeamonSets, Deploymnets, Jobs, Pods and ReplicaSets

## Rationale

Containers should not be deployed with root privileges. By default, many container services run as the privileged root user, and applications execute inside the container as root despite not requiring privileged execution. Preventing root execution by using non-root containers or a rootless container engine limits the impact of a container compromise.