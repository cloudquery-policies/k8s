# Read only root filesystem enabled

## Description

`readOnlyRootFilesystem` setting that controls whether a container is able to write into its filesystem.

This includes DeamonSets, Deployments, Jobs, Pods and ReplicaSets

## Rationale


Containers should always run with a read only root file system. Using an immutable root filesystem and a verified boot mechanism prevents against attackers from owning the machine through permanent local changes. An immutable root filesystem can also prevent malicious binaries from writing to the host system.