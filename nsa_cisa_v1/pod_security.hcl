
policy "pod_security" {
  title ="Kubernetes Pod Security"
  docs = file("nsa_cisa_v1/docs/pod_security/pod_security.md")

  check "container_disallow_host_path" {
    title = "Disallow host path access"
    docs = file("nsa_cisa_v1/docs/pod_security/container_disallow_host_path.md")
    query = file("queries/pod_security/pod_volume_host_path.sql")
  }


  policy "container_privilege_disabled" {
    title ="Verify containers have privileged access disabled"
    docs = file("nsa_cisa_v1/docs/pod_security/privileged_access_disabled.md")

    check "daemonset_container_privilege_disabled" {
      title = "Deamonset privileges disabled"
         docs = file("nsa_cisa_v1/docs/pod_security/privileged_access_disabled.md")
      query = file("queries/pod_security/daemonset_container_privilege_disabled.sql")
    }

    check "deployment_container_privilege_disabled" {
      title ="Deployment containers privileged access disabled"
      docs = file("nsa_cisa_v1/docs/pod_security/privileged_access_disabled.md")
      query = file("queries/pod_security/deployment_container_privilege_disabled.sql")
    }

    check "job_container_privilege_disabled" {
      title = "Jobs container privileged access disabled"
      docs = file("nsa_cisa_v1/docs/pod_security/privileged_access_disabled.md")
      query = file("queries/pod_security/job_container_privilege_disabledsql")
    }

    check "pod_container_privilege_disabled" {
      title = "Pod container privileged access disabled"
      docs = file("nsa_cisa_v1/docs/pod_security/privileged_access_disabled.md")
      query = file("queries/pod_security/pod_container_privilege_disabled.sql")
    }

    check "replicaset_container_privilege_disabled" {
      title = "ReplicaSet container privileged access disabled"
      docs = file("nsa_cisa_v1/docs/pod_security/privileged_access_disabled.md")
      query = file("queries/pod_security/replicaset_container_privilege_disabled.sql")
    }
  }

  policy "container_privilege_escalation_disabled" {
    title ="Container privileged escalation disabled"
      docs = file("nsa_cisa_v1/docs/pod_security/allow_privileged_access_disabled.md")

    check "daemonset_container_privilege_escalation_disabled" {
      title ="DaemonSet container privileged escalation disabled"
      docs = file("nsa_cisa_v1/docs/pod_security/allow_privileged_access_disabled.md")
      query = file("queries/pod_security/daemonset_container_privilege_escalation_disabled.sql")
    }

    check "deployment_container_privilege_escalation_disabled" {
      title ="Deployment container privileged escalation disabled"
      docs = file("nsa_cisa_v1/docs/pod_security/allow_privileged_access_disabled.md")
      query = file("queries/pod_security/deployment_container_privilege_escalation_disabled.sql")
    }

    check "job_container_privilege_escalation_disabled" {
      title ="Job container privileged escalation disabled"
      docs = file("nsa_cisa_v1/docs/pod_security/allow_privileged_access_disabled.md")
      query = file("queries/pod_security/job_container_privilege_escalation_disabled.sql")
    }

    check "pod_container_privilege_escalation_disabled" {
      title ="Pod container privileged escalation disabled"
      docs = file("nsa_cisa_v1/docs/pod_security/allow_privileged_access_disabled.md")
      query = file("queries/pod_security/pod_container_privilege_escalation_disabled.sql")
    }

    check "replicaset_container_privilege_escalation_disabled" {
      title ="ReplicaSet container privileged escalation disabled"
      docs = file("nsa_cisa_v1/docs/pod_security/allow_privileged_access_disabled.md")
      query = file("queries/pod_security/replicaset_container_privilege_escalation_disabled.sql")
    }
  }

  policy "host_network_access_disabled" {
    title ="Host network access disabled"

    check "daemonset_host_network_access_disabled" {
      title ="DaemonSet container hostNetwork disabled"
      docs = file("nsa_cisa_v1/docs/pod_security/host_network_access_disabled.md")
      query = file("queries/pod_security/daemonset_host_network_access_disabled.sql")
    }

    check "deployment_host_network_access_disabled" {
      title ="Deployment container hostNetwork disabled"
      docs = file("nsa_cisa_v1/docs/pod_security/host_network_access_disabled.md")
      query = file("queries/pod_security/deployment_host_network_access_disabled.sql")
    }

    check "job_host_network_access_disabled" {
      title ="Job container hostNetwork disabled"
      docs = file("nsa_cisa_v1/docs/pod_security/host_network_access_disabled.md")
      query = file("queries/pod_security/job_host_network_access_disabled.sql")
    }

    check "pod_host_network_access_disabled" {
      title ="Pod container hostNetwork disabled"
      docs = file("nsa_cisa_v1/docs/pod_security/host_network_access_disabled.md")
      query = file("queries/pod_security/pod_host_network_access_disabled.sql")
    }

    check "replicaset_host_network_access_disabled" {
      title ="ReplicaSet container hostNetwork disabled"
      docs = file("nsa_cisa_v1/docs/pod_security/host_network_access_disabled.md")
      query = file("queries/pod_security/replicaset_host_network_access_disabled.sql")
    }
  }

  policy "hostpid_hostipc_sharing_disabled" {
    title ="Containers should not share the host process PID or IPC namespace. Sharing the host’s process namespace allows the container to see all of the processes on the host system. This reduces the benefit of process level isolation between the host and the containers. Under these circumstances a malicious user who has access to a container could get access to processes on the host itself, manipulate them, and even be able to kill them."

    check "daemonset_hostpid_hostipc_sharing_disabled" {
      title ="Containers in a DaemonSet should not share the host process PID or IPC namespace. Sharing the host’s process namespace allows the container to see all of the processes on the host system. This reduces the benefit of process level isolation between the host and the containers. Under these circumstances a malicious user who has access to a container could get access to processes on the host itself, manipulate them, and even be able to kill them."
      query = file("queries/pod_security/daemonset_hostpid_hostipc_sharing_disabled.sql")
    }

    check "deployment_hostpid_hostipc_sharing_disabled" {
      title ="Containers in a Deployment should not share the host process PID or IPC namespace. Sharing the host’s process namespace allows the container to see all of the processes on the host system. This reduces the benefit of process level isolation between the host and the containers. Under these circumstances a malicious user who has access to a container could get access to processes on the host itself, manipulate them, and even be able to kill them."
      query = file("queries/pod_security/deployment_hostpid_hostipc_sharing_disabled.sql")
    }

    check "job_hostpid_hostipc_sharing_disabled" {
      title ="Containers in a Job should not share the host process PID or IPC namespace. Sharing the host’s process namespace allows the container to see all of the processes on the host system. This reduces the benefit of process level isolation between the host and the containers. Under these circumstances a malicious user who has access to a container could get access to processes on the host itself, manipulate them, and even be able to kill them."
      query = file("queries/pod_security/job_hostpid_hostipc_sharing_disabled.sql")
    }

    check "pod_hostpid_hostipc_sharing_disabled" {
      title ="Containers in a Pod should not share the host process PID or IPC namespace. Sharing the host’s process namespace allows the container to see all of the processes on the host system. This reduces the benefit of process level isolation between the host and the containers. Under these circumstances a malicious user who has access to a container could get access to processes on the host itself, manipulate them, and even be able to kill them."
      query = file("queries/pod_security/pod_hostpid_hostipc_sharing_disabled.sql")
    }

    check "replicaset_hostpid_hostipc_sharing_disabled" {
      title ="Containers in a ReplicaSet should not share the host process PID or IPC namespace. Sharing the host’s process namespace allows the container to see all of the processes on the host system. This reduces the benefit of process level isolation between the host and the containers. Under these circumstances a malicious user who has access to a container could get access to processes on the host itself, manipulate them, and even be able to kill them."
      query = file("queries/pod_security/replicaset_hostpid_hostipc_sharing_disabled.sql")
    }
  }

  policy "immutable_container_filesystem" {
    title ="Containers should always run with a read only root file system. Using an immutable root filesystem and a verified boot mechanism prevents against attackers from owning the machine through permanent local changes. An immutable root filesystem can also prevent malicious binaries from writing to the host system."

    check "daemonset_immutable_container_filesystem" {
      title ="Containers in a DaemonSet should always run with a read only root file system. Using an immutable root filesystem and a verified boot mechanism prevents against attackers from owning the machine through permanent local changes. An immutable root filesystem can also prevent malicious binaries from writing to the host system."
      query = file("queries/pod_security/daemonset_immutable_container_filesystem.sql")
    }

    check "deployment_immutable_container_filesystem" {
      title ="Containers in a Deployment should always run with a read only root file system. Using an immutable root filesystem and a verified boot mechanism prevents against attackers from owning the machine through permanent local changes. An immutable root filesystem can also prevent malicious binaries from writing to the host system."
      query = file("queries/pod_security/deployment_immutable_container_filesystem.sql")
    }

    check "job_immutable_container_filesystem" {
      title ="Containers in a Job should always run with a read only root file system. Using an immutable root filesystem and a verified boot mechanism prevents against attackers from owning the machine through permanent local changes. An immutable root filesystem can also prevent malicious binaries from writing to the host system."
      query = file("queries/pod_security/job_immutable_container_filesystem.sql")
    }

    check "pod_immutable_container_filesystem" {
      title ="Containers in a Pod should always run with a read only root file system. Using an immutable root filesystem and a verified boot mechanism prevents against attackers from owning the machine through permanent local changes. An immutable root filesystem can also prevent malicious binaries from writing to the host system."
      query = file("queries/pod_security/pod_immutable_container_filesystem.sql")
    }

    check "replicaset_immutable_container_filesystem" {
      title ="Containers in a ReplicaSet should always run with a read only root file system. Using an immutable root filesystem and a verified boot mechanism prevents against attackers from owning the machine through permanent local changes. An immutable root filesystem can also prevent malicious binaries from writing to the host system."
      query = file("queries/pod_security/replicaset_immutable_container_filesystem.sql")
    }
  }

  policy "non_root_container" {
    title ="Containers should not be deployed with root privileges. By default, many container services run as the privileged root user, and applications execute inside the container as root despite not requiring privileged execution. Preventing root execution by using non-root containers or a rootless container engine limits the impact of a container compromise."

    check "daemonset_non_root_container" {
      title ="Containers in a DaemonSet should not run with root privileges. By default, many container services run as the privileged root user, and applications execute inside the container as root despite not requiring privileged execution. Preventing root execution by using non-root containers or a rootless container engine limits the impact of a container compromise."
      query = file("queries/pod_security/daemonset_non_root_container.sql")
    }

    check "deployment_non_root_container" {
      title ="Containers in a Deployment should not run with root privileges. By default, many container services run as the privileged root user, and applications execute inside the container as root despite not requiring privileged execution. Preventing root execution by using non-root containers or a rootless container engine limits the impact of a container compromise."
      query = file("queries/pod_security/deployment_non_root_container.sql")
    }

    check "job_non_root_container" {
      title ="Containers in a Job should not run with root privileges. By default, many container services run as the privileged root user, and applications execute inside the container as root despite not requiring privileged execution. Preventing root execution by using non-root containers or a rootless container engine limits the impact of a container compromise."
      query = file("queries/pod_security/job_non_root_container.sql")
    }

    check "pod_non_root_container" {
      title ="Containers in a Pod should not run with root privileges. By default, many container services run as the privileged root user, and applications execute inside the container as root despite not requiring privileged execution. Preventing root execution by using non-root containers or a rootless container engine limits the impact of a container compromise."
      query = file("queries/pod_security/pod_non_root_container.sql")
    }

    check "replicaset_non_root_container" {
      title ="Containers in a ReplicaSet should not run with root privileges. By default, many container services run as the privileged root user, and applications execute inside the container as root despite not requiring privileged execution. Preventing root execution by using non-root containers or a rootless container engine limits the impact of a container compromise."
      query = file("queries/pod_security/replicaset_non_root_container.sql")
    }
  }

  policy "service_account_token_disabled" {
    title ="Automatic mapping of the service account tokens should be disabled"

    check "pod_service_account_token_disabled" {
      title ="Automatic mapping of service account token should be disabled. By default, Kubernetes automatically provisions a service account when creating a Pod and mounts the account’s secret token within the Pod at runtime. Many containerized applications do not require direct access to the service account as Kubernetes orchestration occurs transparently in the background. If an application is compromised, account tokens in Pods can be gleaned by cyber actors and used to further compromise the cluster. When an application does not need to access the service account directly, Kubernetes administrators should ensure that Pod specifications disable the secret token being mounted. This can be accomplished using the automountServiceAccountToken: false directive in the Pod’s YAML specification."
      query = file("queries/pod_security/pod_service_account_token_disabled.sql")
    }

    check "service_account_token_disabled" {
      title ="Automatic mapping of service account token should be disabled. By default, Kubernetes automatically provisions a service account when creating a Pod and mounts the account’s secret token within the Pod at runtime. Many containerized applications do not require direct access to the service account as Kubernetes orchestration occurs transparently in the background. If an application is compromised, account tokens in Pods can be gleaned by cyber actors and used to further compromise the cluster. When an application does not need to access the service account directly, Kubernetes administrators should ensure that Pod specifications disable the secret token being mounted. This can be accomplished using the automountServiceAccountToken: false directive in the Pod’s YAML specification."
      query = file("queries/pod_security/service_account_token_disabled.sql")
    }
  }
}