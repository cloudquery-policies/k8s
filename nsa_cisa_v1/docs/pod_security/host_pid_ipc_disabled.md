# Host network access disabled

## Description

Ensure containers don't run with `hostIPC`, `hostPID` flags set to `true`.

This includes DeamonSets, Deployments, Jobs, Pods and ReplicaSets

## Rationle

Containers should not share the host process PID or IPC namespace.  Sharing the host’s process namespace allows the container to see all of the processes on the host system. This reduces the benefit of process level isolation between the host and the containers. 

Under these circumstances a malicious user who has access to a container could get access to processes on the host itself, manipulate them, and even be able to kill them.