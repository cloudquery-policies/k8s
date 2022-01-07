# Kubernetes Network policies

## Description

Network policies control traffic flow between Pods, namespaces, and external IP addresses. By default, no network
policies are applied to Pods or namespaces, resulting in unrestricted ingress and egress traffic within the Pod network.
Pods become isolated through a network policy that applies to the Pod or the Pod’s namespace. Once a Pod is selected in
a network policy, it rejects any connections that are not specifically allowed by any applicable policy object.
