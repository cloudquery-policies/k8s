# Kubernetes Network separation and hardening

Cluster networking is a central concept of Kubernetes. Communication between
containers, Pods, services, and external services must be taken into consideration. By
default, there are few network policies in place to separate resources and prevent
lateral movement or escalation if a cluster is compromised. Resource separation and
encryption can be an effective way to limit a cyber actor’s movement and escalation
within a cluster.

## Recommendations

 - Lock down access to control plane nodes using a firewall and role-based
   access control (RBAC)
 - Further limit access to the Kubernetes etcd server
 - Configure control plane components to use authenticated, encrypted
   communications using Transport Layer Security (TLS) certificates
 - Set up network policies to isolate resources. Pods and services in different
   namespaces can still communicate with each other unless additional
   separation is enforced, such as network policies
 - Place all credentials and sensitive information in Kubernetes Secrets
   rather than in configuration files. Encrypt Secrets using a strong
   encryption method
