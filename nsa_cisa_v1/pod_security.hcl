
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
    docs = file("nsa_cisa_v1/docs/pod_security/host_network_access_disabled.md")

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
    title ="HostPID and HostIPC sharing disabled"
    docs = file("nsa_cisa_v1/docs/pod_security/host_pid_ipc_disabled.md")

    check "daemonset_hostpid_hostipc_sharing_disabled" {
      title ="DeamonSet containers HostPID and HostIPC sharing disabled"
      docs = file("nsa_cisa_v1/docs/pod_security/host_pid_ipc_disabled.md")
      query = file("queries/pod_security/daemonset_hostpid_hostipc_sharing_disabled.sql")
    }

    check "deployment_hostpid_hostipc_sharing_disabled" {
      title ="Deployment containers HostPID and HostIPC sharing disabled"
      docs = file("nsa_cisa_v1/docs/pod_security/host_pid_ipc_disabled.md")
      query = file("queries/pod_security/deployment_hostpid_hostipc_sharing_disabled.sql")
    }

    check "job_hostpid_hostipc_sharing_disabled" {
      title ="Job containers HostPID and HostIPC sharing disabled"
      docs = file("nsa_cisa_v1/docs/pod_security/host_pid_ipc_disabled.md")
      query = file("queries/pod_security/job_hostpid_hostipc_sharing_disabled.sql")
    }

    check "pod_hostpid_hostipc_sharing_disabled" {
      title ="Pod containers HostPID and HostIPC sharing disabled"
      docs = file("nsa_cisa_v1/docs/pod_security/host_pid_ipc_disabled.md")
      query = file("queries/pod_security/pod_hostpid_hostipc_sharing_disabled.sql")
    }

    check "replicaset_hostpid_hostipc_sharing_disabled" {
      title ="ReplicaSet containers HostPID and HostIPC sharing disabled"
      docs = file("nsa_cisa_v1/docs/pod_security/host_pid_ipc_disabled.md")
      query = file("queries/pod_security/replicaset_hostpid_hostipc_sharing_disabled.sql")
    }
  }

  policy "immutable_container_filesystem" {
      title ="Containers root file system is read-only"
      docs = file("nsa_cisa_v1/docs/pod_security/read_only_root_filesystem.md")

    check "daemonset_immutable_container_filesystem" {
      title ="DeamonSet containers root file system is read-only"
      docs = file("nsa_cisa_v1/docs/pod_security/read_only_root_filesystem.md")
      query = file("queries/pod_security/daemonset_immutable_container_filesystem.sql")
    }

    check "deployment_immutable_container_filesystem" {
      title ="Deployment containers root file system is read-only"
      docs = file("nsa_cisa_v1/docs/pod_security/read_only_root_filesystem.md")
      query = file("queries/pod_security/deployment_immutable_container_filesystem.sql")
    }

    check "job_immutable_container_filesystem" {
      title ="Job containers root file system is read-only"
      docs = file("nsa_cisa_v1/docs/pod_security/read_only_root_filesystem.md")
      query = file("queries/pod_security/job_immutable_container_filesystem.sql")
    }

    check "pod_immutable_container_filesystem" {
      title ="Pod containers root file system is read-only"
      docs = file("nsa_cisa_v1/docs/pod_security/read_only_root_filesystem.md")
      query = file("queries/pod_security/pod_immutable_container_filesystem.sql")
    }

    check "replicaset_immutable_container_filesystem" {
      title ="ReplicaSet containers root file system is read-only"
      docs = file("nsa_cisa_v1/docs/pod_security/read_only_root_filesystem.md")
      query = file("queries/pod_security/replicaset_immutable_container_filesystem.sql")
    }
  }

  policy "non_root_container" {
    title ="Enforce containers to run as non-root"
    docs = file("nsa_cisa_v1/docs/pod_security/non_root_containers.md")

    check "daemonset_non_root_container" {
      title ="DeamonSet containers to run as non-root"
      docs = file("nsa_cisa_v1/docs/pod_security/non_root_containers.md")
      query = file("queries/pod_security/daemonset_non_root_container.sql")
    }

    check "deployment_non_root_container" {
      title ="Deployment containers to run as non-root"
      docs = file("nsa_cisa_v1/docs/pod_security/non_root_containers.md")
      query = file("queries/pod_security/deployment_non_root_container.sql")
    }

    check "job_non_root_container" {
      title ="Job containers to run as non-root"
      docs = file("nsa_cisa_v1/docs/pod_security/non_root_containers.md")
      query = file("queries/pod_security/job_non_root_container.sql")
    }

    check "pod_non_root_container" {
      title ="Pod containers to run as non-root"
      docs = file("nsa_cisa_v1/docs/pod_security/non_root_containers.md")
      query = file("queries/pod_security/pod_non_root_container.sql")
    }

    check "replicaset_non_root_container" {
      title ="ReplicaSet containers to run as non-root"
      docs = file("nsa_cisa_v1/docs/pod_security/non_root_containers.md")
      query = file("queries/pod_security/replicaset_non_root_container.sql")
    }
  }

  policy "service_account_token_disabled" {
    title ="Automatic mapping of the service account tokens disabled"
    docs = file("nsa_cisa_v1/docs/pod_security/service_account_token_disabled.md")

    check "pod_service_account_token_disabled" {
      title ="Pod service account tokens disabled"
      docs = file("nsa_cisa_v1/docs/pod_security/service_account_token_disabled.md")
      query = file("queries/pod_security/pod_service_account_token_disabled.sql")
    }

    check "service_account_token_disabled" {
      title ="Pod service account tokens disabled"
      docs = file("nsa_cisa_v1/docs/pod_security/service_account_token_disabled.md")
      query = file("queries/pod_security/service_account_token_disabled.sql")
    }
  }
}