# Control plane hardening

## Description

The control plane is the core of Kubernetes and gives users the ability to view containers, schedule new Pods, read
Secrets, and execute commands in the cluster. 


## Rationale

The Kubernetes control plane is a great target for cluster attacks, because of its sensitive capabilities, the control plane should be highly protected. 
It is important to make sure to set up secure configurations such as TLS encryption, RBAC, and a strong authentication method, and also network separation to help prevent unauthorized users from accessing it.