# Endpoint API Serve on Secure Port

## Description

The control plane is the core of Kubernetes and gives users the ability to view containers, schedule new Pods, read
Secrets, and execute commands in the cluster. Because of these sensitive capabilities, the control plane should be
highly protected.

## Rationale

The Kubernetes API server runs on ports 6443 and 8080, which should be protected by a firewall to accept only expected
traffic. Port 8080, by default, is accessible without TLS encryption from the local machine, and the request bypasses
authentication and authorization modules. The insecure port can be disabled using the API server flag
`--insecure-port=0`.
