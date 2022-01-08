# Host network access disabled

## Description

When a pod is configured with `hostNetwork` set `true`, the applications running in such a pod can directly see the network interfaces of the host machine where the pod was started. An application that is configured to listen on all network interfaces will in turn be accessible on all network interfaces of the host machine.

This includes DeamonSets, Deployments, Jobs, Pods and ReplicaSets

## Rationle

Although, you can't achieve privileged code execution on the host directly, enabling `hostNetwork` might give a few possible escalation paths:

- Pod host network controls whether the Pod may use the node network namespace. Doing so gives the Pod access to the loopback device, services listening o    
localhost, and could be used to snoop on network activity of other Pods on the same node.
- Access services bound to localhost
- Bypass network policy - if a network policy is set in the namepsace of the pod with restrictions, deploying a pod with `hostNetwork` set to `true` allows it to ovrride these restrictions.