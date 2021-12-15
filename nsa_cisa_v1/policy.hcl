policy "nsa_cisa_v1" {
  description = "NSA and CISA Kubernetes Hardening Guidance v1.0"
  configuration {
    provider "k8s" {
      version = ">= v0.3.0"
    }
  }

  policy "pod_security" {
    description = "Kubernetes Pod Security"

    policy "container_disallow_host_path" {
      description = "Containers should not able to access any specific paths of the host file system. There are many ways a container with unrestricted access to the host filesystem can escalate privileges, including reading data from other containers, and abusing the credentials of system services, such as Kubelet."

      query "pod_volume_host_path" {
        description = "Containers in a Pod should not able to access any specific paths of the host file system. There are many ways a container with unrestricted access to the host filesystem can escalate privileges, including reading data from other containers, and abusing the credentials of system services, such as Kubelet."
        query = file("queries/pod_security/pod_volume_host_path.sql")
      }
    }

    policy "container_privilege_disabled" {
      description = "Containers should not have privileged access. To prevent security issues, it is recommended that you do not run privileged containers in your environment. Instead, provide granular permissions and capabilities to the container environment. Giving containers full access to the host can create security flaws in your production environment."

      query "daemonset_container_privilege_disabled" {
        description = "Containers in a DaemonSet should not have privileged access. To prevent security issues, it is recommended that you do not run privileged containers in your environment. Instead, provide granular permissions and capabilities to the container environment. Giving containers full access to the host can create security flaws in your production environment."
        query = file("queries/pod_security/daemonset_container_privilege_disabled.sql")
      }

      query "deployment_container_privilege_disabled" {
        description = "Containers in a Deployment should not have privileged access. To prevent security issues, it is recommended that you do not run privileged containers in your environment. Instead, provide granular permissions and capabilities to the container environment. Giving containers full access to the host can create security flaws in your production environment."
        query = file("queries/pod_security/deployment_container_privilege_disabled.sql")
      }

      query "job_container_privilege_disabled" {
        description = "Containers in a Job should not have privileged access. To prevent security issues, it is recommended that you do not run privileged containers in your environment. Instead, provide granular permissions and capabilities to the container environment. Giving containers full access to the host can create security flaws in your production environment."
        query = file("queries/pod_security/job_container_privilege_disabledsql")
      }

      query "pod_container_privilege_disabled" {
        description = "Containers in a Pod should not have privileged access. To prevent security issues, it is recommended that you do not run privileged containers in your environment. Instead, provide granular permissions and capabilities to the container environment. Giving containers full access to the host can create security flaws in your production environment."
        query = file("queries/pod_security/pod_container_privilege_disabled.sql")
      }

      query "replicaset_container_privilege_disabled" {
        description = "Containers in a ReplicaSet should not have privileged access. To prevent security issues, it is recommended that you do not run privileged containers in your environment. Instead, provide granular permissions and capabilities to the container environment. Giving containers full access to the host can create security flaws in your production environment."
        query = file("queries/pod_security/replicaset_container_privilege_disabled.sql")
      }
    }

    policy "container_privilege_escalation_disabled" {
      description = "Containers should not allow privilege escalation. A container running with the `allowPrivilegeEscalation` flag set to true may have processes that can gain more privileges than their parent."

      query "daemonset_container_privilege_escalation_disabled" {
        description = "Containers in a DaemonSet should not allow privilege escalation. A container running with the allowPrivilegeEscalation flag set to true may have processes that can gain more privileges than their parent."
        query = file("queries/pod_security/daemonset_container_privilege_escalation_disabled.sql")
      }

      query "deployment_container_privilege_escalation_disabled" {
        description = "Containers in a Deployment should not allow privilege escalation. A container running with the allowPrivilegeEscalation flag set to true may have processes that can gain more privileges than their parent."
        query = file("queries/pod_security/deployment_container_privilege_escalation_disabled.sql")
      }

      query "job_container_privilege_escalation_disabled" {
        description = "Containers in a Job should not allow privilege escalation. A container running with the allowPrivilegeEscalation flag set to true may have processes that can gain more privileges than their parent."
        query = file("queries/pod_security/job_container_privilege_escalation_disabled.sql")
      }

      query "pod_container_privilege_escalation_disabled" {
        description = "Containers in a Pod should not allow privilege escalation. A container running with the allowPrivilegeEscalation flag set to true may have processes that can gain more privileges than their parent."
        query = file("queries/pod_security/pod_container_privilege_escalation_disabled.sql")
      }

      query "replicaset_container_privilege_escalation_disabled" {
        description = "Containers in a ReplicaSet should not allow privilege escalation. A container running with the allowPrivilegeEscalation flag set to true may have processes that can gain more privileges than their parent."
        query = file("queries/pod_security/replicaset_container_privilege_escalation_disabled.sql")
      }
    }

    policy "host_network_access_disabled" {
      description = "Pod host network controls whether the Pod may use the node network namespace. Doing so gives the Pod access to the loopback device, services listening on localhost, and could be used to snoop on network activity of other Pods on the same node."

      query "daemonset_host_network_access_disabled" {
        description = "Containers in a DaemonSet should not run in the host network of the node where the pod is deployed. When running on the host network, the pod can use the network namespace and network resources of the node. In this case, the pod can access loopback devices, listen to addresses, and monitor the traffic of other pods on the node."
        query = file("queries/pod_security/daemonset_host_network_access_disabled.sql")
      }

      query "deployment_host_network_access_disabled" {
        description = "Containers in a Deployment should not run in the host network of the node where the pod is deployed. When running on the host network, the pod can use the network namespace and network resources of the node. In this case, the pod can access loopback devices, listen to addresses, and monitor the traffic of other pods on the node."
        query = file("queries/pod_security/deployment_host_network_access_disabled.sql")
      }

      query "job_host_network_access_disabled" {
        description = "Containers in a Job should not run in the host network of the node where the pod is deployed. When running on the host network, the pod can use the network namespace and network resources of the node. In this case, the pod can access loopback devices, listen to addresses, and monitor the traffic of other pods on the node."
        query = file("queries/pod_security/job_host_network_access_disabled.sql")
      }

      query "pod_host_network_access_disabled" {
        description = "Containers in a Pod should not run in the host network of the node where the pod is deployed. When running on the host network, the pod can use the network namespace and network resources of the node. In this case, the pod can access loopback devices, listen to addresses, and monitor the traffic of other pods on the node."
        query = file("queries/pod_security/pod_host_network_access_disabled.sql")
      }

      query "replicaset_host_network_access_disabled" {
        description = "Containers in a ReplicaSet should not run in the host network of the node where the pod is deployed. When running on the host network, the pod can use the network namespace and network resources of the node. In this case, the pod can access loopback devices, listen to addresses, and monitor the traffic of other pods on the node."
        query = file("queries/pod_security/replicaset_host_network_access_disabled.sql")
      }
    }

    policy "hostpid_hostipc_sharing_disabled" {
      description = "Containers should not share the host process PID or IPC namespace. Sharing the host’s process namespace allows the container to see all of the processes on the host system. This reduces the benefit of process level isolation between the host and the containers. Under these circumstances a malicious user who has access to a container could get access to processes on the host itself, manipulate them, and even be able to kill them."

      query "daemonset_hostpid_hostipc_sharing_disabled" {
        description = "Containers in a DaemonSet should not share the host process PID or IPC namespace. Sharing the host’s process namespace allows the container to see all of the processes on the host system. This reduces the benefit of process level isolation between the host and the containers. Under these circumstances a malicious user who has access to a container could get access to processes on the host itself, manipulate them, and even be able to kill them."
        query = file("queries/pod_security/daemonset_hostpid_hostipc_sharing_disabled.sql")
      }

      query "deployment_hostpid_hostipc_sharing_disabled" {
        description = "Containers in a Deployment should not share the host process PID or IPC namespace. Sharing the host’s process namespace allows the container to see all of the processes on the host system. This reduces the benefit of process level isolation between the host and the containers. Under these circumstances a malicious user who has access to a container could get access to processes on the host itself, manipulate them, and even be able to kill them."
        query = file("queries/pod_security/deployment_hostpid_hostipc_sharing_disabled.sql")
      }

      query "job_hostpid_hostipc_sharing_disabled" {
        description = "Containers in a Job should not share the host process PID or IPC namespace. Sharing the host’s process namespace allows the container to see all of the processes on the host system. This reduces the benefit of process level isolation between the host and the containers. Under these circumstances a malicious user who has access to a container could get access to processes on the host itself, manipulate them, and even be able to kill them."
        query = file("queries/pod_security/job_hostpid_hostipc_sharing_disabled.sql")
      }

      query "pod_hostpid_hostipc_sharing_disabled" {
        description = "Containers in a Pod should not share the host process PID or IPC namespace. Sharing the host’s process namespace allows the container to see all of the processes on the host system. This reduces the benefit of process level isolation between the host and the containers. Under these circumstances a malicious user who has access to a container could get access to processes on the host itself, manipulate them, and even be able to kill them."
        query = file("queries/pod_security/pod_hostpid_hostipc_sharing_disabled.sql")
      }

      query "replicaset_hostpid_hostipc_sharing_disabled" {
        description = "Containers in a ReplicaSet should not share the host process PID or IPC namespace. Sharing the host’s process namespace allows the container to see all of the processes on the host system. This reduces the benefit of process level isolation between the host and the containers. Under these circumstances a malicious user who has access to a container could get access to processes on the host itself, manipulate them, and even be able to kill them."
        query = file("queries/pod_security/replicaset_hostpid_hostipc_sharing_disabled.sql")
      }
    }

    policy "immutable_container_filesystem" {
      description = "Containers should always run with a read only root file system. Using an immutable root filesystem and a verified boot mechanism prevents against attackers from owning the machine through permanent local changes. An immutable root filesystem can also prevent malicious binaries from writing to the host system."

      query "daemonset_immutable_container_filesystem" {
        description = "Containers in a DaemonSet should always run with a read only root file system. Using an immutable root filesystem and a verified boot mechanism prevents against attackers from owning the machine through permanent local changes. An immutable root filesystem can also prevent malicious binaries from writing to the host system."
        query = file("queries/pod_security/daemonset_immutable_container_filesystem.sql")
      }

      query "deployment_immutable_container_filesystem" {
        description = "Containers in a Deployment should always run with a read only root file system. Using an immutable root filesystem and a verified boot mechanism prevents against attackers from owning the machine through permanent local changes. An immutable root filesystem can also prevent malicious binaries from writing to the host system."
        query = file("queries/pod_security/deployment_immutable_container_filesystem.sql")
      }

      query "job_immutable_container_filesystem" {
        description = "Containers in a Job should always run with a read only root file system. Using an immutable root filesystem and a verified boot mechanism prevents against attackers from owning the machine through permanent local changes. An immutable root filesystem can also prevent malicious binaries from writing to the host system."
        query = file("queries/pod_security/job_immutable_container_filesystem.sql")
      }

      query "pod_immutable_container_filesystem" {
        description = "Containers in a Pod should always run with a read only root file system. Using an immutable root filesystem and a verified boot mechanism prevents against attackers from owning the machine through permanent local changes. An immutable root filesystem can also prevent malicious binaries from writing to the host system."
        query = file("queries/pod_security/pod_immutable_container_filesystem.sql")
      }

      query "replicaset_immutable_container_filesystem" {
        description = "Containers in a ReplicaSet should always run with a read only root file system. Using an immutable root filesystem and a verified boot mechanism prevents against attackers from owning the machine through permanent local changes. An immutable root filesystem can also prevent malicious binaries from writing to the host system."
        query = file("queries/pod_security/replicaset_immutable_container_filesystem.sql")
      }
    }

    policy "non_root_container" {
      description = "Containers should not be deployed with root privileges. By default, many container services run as the privileged root user, and applications execute inside the container as root despite not requiring privileged execution. Preventing root execution by using non-root containers or a rootless container engine limits the impact of a container compromise."

      query "daemonset_non_root_container" {
        description = "Containers in a DaemonSet should not run with root privileges. By default, many container services run as the privileged root user, and applications execute inside the container as root despite not requiring privileged execution. Preventing root execution by using non-root containers or a rootless container engine limits the impact of a container compromise."
        query = file("queries/pod_security/daemonset_non_root_container.sql")
      }

      query "deployment_non_root_container" {
        description = "Containers in a Deployment should not run with root privileges. By default, many container services run as the privileged root user, and applications execute inside the container as root despite not requiring privileged execution. Preventing root execution by using non-root containers or a rootless container engine limits the impact of a container compromise."
        query = file("queries/pod_security/deployment_non_root_container.sql")
      }

      query "job_non_root_container" {
        description = "Containers in a Job should not run with root privileges. By default, many container services run as the privileged root user, and applications execute inside the container as root despite not requiring privileged execution. Preventing root execution by using non-root containers or a rootless container engine limits the impact of a container compromise."
        query = file("queries/pod_security/job_non_root_container.sql")
      }

      query "pod_non_root_container" {
        description = "Containers in a Pod should not run with root privileges. By default, many container services run as the privileged root user, and applications execute inside the container as root despite not requiring privileged execution. Preventing root execution by using non-root containers or a rootless container engine limits the impact of a container compromise."
        query = file("queries/pod_security/pod_non_root_container.sql")
      }

      query "replicaset_non_root_container" {
        description = "Containers in a ReplicaSet should not run with root privileges. By default, many container services run as the privileged root user, and applications execute inside the container as root despite not requiring privileged execution. Preventing root execution by using non-root containers or a rootless container engine limits the impact of a container compromise."
        query = file("queries/pod_security/replicaset_non_root_container.sql")
      }
    }

    policy "service_account_token_disabled" {
      description = "Automatic mapping of the service account tokens should be disabled"

      query "pod_service_account_token_disabled" {
        description = "Automatic mapping of service account token should be disabled. By default, Kubernetes automatically provisions a service account when creating a Pod and mounts the account’s secret token within the Pod at runtime. Many containerized applications do not require direct access to the service account as Kubernetes orchestration occurs transparently in the background. If an application is compromised, account tokens in Pods can be gleaned by cyber actors and used to further compromise the cluster. When an application does not need to access the service account directly, Kubernetes administrators should ensure that Pod specifications disable the secret token being mounted. This can be accomplished using the automountServiceAccountToken: false directive in the Pod’s YAML specification."
        query = file("queries/pod_security/pod_service_account_token_disabled.sql")
      }

      query "service_account_token_disabled" {
        description = "Automatic mapping of service account token should be disabled. By default, Kubernetes automatically provisions a service account when creating a Pod and mounts the account’s secret token within the Pod at runtime. Many containerized applications do not require direct access to the service account as Kubernetes orchestration occurs transparently in the background. If an application is compromised, account tokens in Pods can be gleaned by cyber actors and used to further compromise the cluster. When an application does not need to access the service account directly, Kubernetes administrators should ensure that Pod specifications disable the secret token being mounted. This can be accomplished using the automountServiceAccountToken: false directive in the Pod’s YAML specification."
        query = file("queries/pod_security/service_account_token_disabled.sql")
      }
    }
  }

  policy "network_hardening" {
    description = "Network Separation and Hardening"

    policy "cpu_limit" {
      description = "Containers should have CPU limit which restricts the container to use no more than a given amount of CPU."

      query "daemonset_cpu_limit" {
        description = "Containers in a DaemonSet should have CPU limit which restricts the container to use no more than a given amount of CPU."
        query = file("queries/network_hardening/daemonset_cpu_limit.sql")
      }

      query "deployment_cpu_limit" {
        description = "Containers in a Deployment should have CPU limit which restricts the container to use no more than a given amount of CPU."
        query = file("queries/network_hardening/deployment_cpu_limit.sql")
      }

      query "job_cpu_limit" {
        description = "Containers in a Job should have CPU limit which restricts the container to use no more than a given amount of CPU."
        query = file("queries/network_hardening/job_cpu_limit.sql")
      }

      query "namespace_limit_range_default_cpu_limit" {
        description = "Administrators should use default limitRange policy for CPU limit for each namespace."
        query = file("queries/network_hardening/namespace_limit_range_default_cpu_limit.sql")
      }

      query "namespace_resource_quota_cpu_limit" {
        description = "Administrators should use resourceQuota CPU limit to restrict namespaces CPU usage."
        query = file("queries/network_hardening/namespace_resource_quota_cpu_limit.sql")
      }

      query "replicaset_cpu_limit" {
        description = "Containers in a ReplicaSet should have CPU limit which restricts the container to use no more than a given amount of CPU."
        query = file("queries/network_hardening/replicaset_cpu_limit.sql")
    }

    policy "cpu_request" {
      description = "Containers should have CPU request. If required Kubernetes will make sure your containers get the CPU they requested."

      query "daemonset_cpu_request" {
        description = "Containers in a DaemonSet should have CPU request. If required Kubernetes will make sure your containers get the CPU they requested."
        query = file("queries/network_hardening/daemonset_cpu_request.sql")
      }

      query "deployment_cpu_request" {
        description = "Containers in a Deployment should have CPU request. If required Kubernetes will make sure your containers get the CPU they requested."
        query = file("queries/network_hardening/deployment_cpu_request.sql")
      }

      query "job_cpu_request" {
        description = "Containers in a Job should have CPU request. If required Kubernetes will make sure your containers get the CPU they requested."
        query = file("queries/network_hardening/job_cpu_request.sql")
      }

      query "namespace_limit_range_default_cpu_request" {
        description = "Administrators should use default limitRange policy for CPU request for each namespace."
        query = file("queries/network_hardening/namespace_limit_range_default_cpu_request.sql")
      }

      query "namespace_resource_quota_cpu_request" {
        description = "Administrators should use resourceQuota CPU request for each namespace."
        query = file("queries/network_hardening/namespace_resource_quota_cpu_request.sql")
      }

      query "replicaset_cpu_request" {
        description = "Containers in a ReplicaSet should have CPU request. If required Kubernetes will make sure your containers get the CPU they requested."
        query = file("queries/network_hardening/replicaset_cpu_request.sql")
      }
    }

    policy "api_serve_on_secure_port_endpoint" {
      description = "Kubernetes API should serve on port 443 or port 6443, protected by TLS. Once TLS is established, the HTTP request moves to the authentication step. If the request cannot be authenticated, it is rejected with HTTP status code 401."

      query "endpoint_api_serve_on_secure_port" {
        description = "Kubernetes API should serve on port 443 or port 6443, protected by TLS. Once TLS is established, the HTTP request moves to the authentication step. If the request cannot be authenticated, it is rejected with HTTP status code 401."
        query = file("queries/network_hardening/endpoint_api_serve_on_secure_port.sql")
      }
    }

    policy "memory_limit" {
      description = "Containers should have a memory limit which restricts the container to use no more than a given amount of user or system memory."

      query "daemonset_memory_limit" {
        description = "Containers in a DaemonSet should have memory limit which restricts the container to use no more than a given amount of user or system memory."
        query = file("queries/network_hardening/daemonset_memory_limit.sql")
      }

      query "deployment_memory_limit" {
        description = "Containers in a Deployment should have memory limit which restricts the container to use no more than a given amount of user or system memory."
        query = file("queries/network_hardening/deployment_memory_limit.sql")
      }

      query "job_memory_limit" {
        description = "Containers in a Job should have memory limit which restricts the container to use no more than a given amount of user or system memory."
        query = file("queries/network_hardening/job_memory_limit.sql")
      }

      query "namespace_limit_range_default_memory_limit" {
        description = "Administrators should use default limitRange policy for memory limit for each namespace."
        query = file("queries/network_hardening/namespace_limit_range_default_memory_limit.sql")
      }

      query "namespace_resource_quota_memory_limit" {
        description = "Administrators should use resourceQuota memory limit to restrict namespaces memory usage."
        query = file("queries/network_hardening/namespace_resource_quota_memory_limit.sql")
      }

      query "replicaset_memory_limit" {
        description = "Containers in a ReplicaSet should have memory limit which restricts the container to use no more than a given amount of user or system memory."
        query = file("queries/network_hardening/replicaset_memory_limit.sql")
      }
    }

    policy "memory_request" {
      description = "Containers should have memory request. If required Kubernetes will make sure your containers get the memory they requested."

      query "daemonset_memory_request" {
        description = "Containers in a DaemonSet should have memory request. If required Kubernetes will make sure your containers get the memory they requested."
        query = file("queries/network_hardening/daemonset_memory_request.sql")
      }

      query "deployment_memory_request" {
        description = "Containers in a Deployment should have memory request. If required Kubernetes will make sure your containers get the memory they requested."
        query = file("queries/network_hardening/deployment_memory_request.sql")
      }

      query "job_memory_request" {
        description = "Containers in a Job should have memory request. If required Kubernetes will make sure your containers get the memory they requested."
        query = file("queries/network_hardening/job_memory_request.sql")
      }

      query "namespace_limit_range_default_memory_request" {
        description = "Administrators should use default limitRange policy for memory request for each namespace."
        query = file("queries/network_hardening/namespace_limit_range_default_memory_request.sql")
      }

      query "namespace_resource_quota_memory_request" {
        description = "Administrators should use resourceQuota memory request for each namespace."
        query = file("queries/network_hardening/namespace_resource_quota_memory_request.sql")
      }

      query "replicaset_memory_request" {
        description = "Containers in a ReplicaSet should have memory request. If required Kubernetes will make sure your containers get the memory they requested."
        query = file("queries/network_hardening/replicaset_memory_request.sql")
      }
    }

    policy "default_deny_network_policy" {
      description = "Administrators should use a default policy selecting all Pods to deny all ingress and egress traffic and ensure any unselected Pods are isolated. Additional policies could then relax these restrictions for permissible connections."

      query "network_policy_default_deny_egress" {
        description = "Administrators should use a default policy selecting all Pods to deny all egress traffic and ensure any unselected Pods are isolated. Additional policies could then relax these restrictions for permissible connections."
        query = file("queries/network_hardening/network_policy_default_deny_egress.sql")
      }

      query "network_policy_default_deny_ingress" {
        description = "Administrators should use a default policy selecting all Pods to deny all ingress traffic and ensure any unselected Pods are isolated. Additional policies could then relax these restrictions for permissible connections."
        query = file("queries/network_hardening/network_policy_default_deny_ingress.sql")
      }

      query "network_policy_default_dont_allow_egress" {
        description = "Administrators should use a default policy selecting all Pods to deny all ingress and egress traffic and ensure any unselected Pods are isolated. An 'allow all' policy would override this default and should not be used. Instead, use specific policies to relax these restrictions only for permissible connections."
        query = file("queries/network_hardening/network_policy_default_dont_allow_egress.sql")
      }

      query "network_policy_default_dont_allow_ingress" {
        description = "Administrators should use a default policy selecting all Pods to deny all ingress and egress traffic and ensure any unselected Pods are isolated. An 'allow all' policy would override this default and should not be used. Instead, use specific policies to relax these restrictions only for permissible connections."
        query = file("queries/network_hardening/network_policy_default_dont_allow_ingress.sql")
      }
    }
  }
}
