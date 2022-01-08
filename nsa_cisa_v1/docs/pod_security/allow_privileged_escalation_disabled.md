# Container allow privileged escalation disabled

# Description

Ensure that containers are not allowed privilege escalation, by checking `allowPrivilegeEscalation` is set to false.

This includes DeamonSets, Deploymnets, Jobs, Pods and Replicaset

# Rationale

One of the foundations of information security is the "principal of least privilege." This means that every user, system process, or application needs to operate using the least set of privileges required to do a task.

Allowing a container to run with the `allowPrivilegeEscalation` flag set to `true` may have processes that can gain more privileges than their parent. Setting this flag to `false` ensures no child process of a container gain more privilges than its parent.
