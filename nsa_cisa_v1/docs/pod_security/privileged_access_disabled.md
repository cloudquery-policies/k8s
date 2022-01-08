# Container privileged access disabled

# Description

Containers should not have privileged access. To prevent security issues, it is recommended that you do not run privileged containers in your environment. Instead, provide granular permissions and capabilities to the container environment. Giving containers full access to the host can create security flaws in your production environment.

This includes DeamonSets, Deploymnets, Jobs, Pods and ReplicaSets

# Rationale

Check containers don't have any privileged access enabled.

By default, many container services run as the privileged root user, and applications execute inside the container as root despite not requiring privileged execution. 

Preventing root execution by using non-root containers or a rootless container engine limits the impact of a container compromise. Both of these methods affect the runtime environment significantly, so applications should be thoroughly tested to ensure compatibility.
