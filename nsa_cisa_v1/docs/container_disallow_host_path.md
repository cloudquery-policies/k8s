
# Disallow Container Host Path

## Description
Containers should not able to access any specific paths of the host file system. 
There are many ways a container with unrestricted access to 
the host filesystem can escalate privileges, including reading data 
from other containers, and abusing the credentials of system services, such as Kubelet.

## Rationale

Limit containers to specific paths  of the host file system. 
The Pod's volume host path should not be set.