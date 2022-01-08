policy "network_hardening" {
  title = "Network Separation and Hardening"
  docs = file("nsa_cisa_v1/docs/network_hardening/network_hardening.md")

  policy "cpu_limit" {
    title = "Enforce CPU resource limits"
    docs = file("nsa_cisa_v1/docs/network_hardening/cpu_limit.md")

    check "daemonset_cpu_limit" {
      title = "DeamonSets"
      docs = file("nsa_cisa_v1/docs/network_hardening/cpu_limit.md")
      query = file("queries/network_hardening/daemonset_cpu_limit.sql")
    }

    check "deployment_cpu_limit" {
      title = "Deployments"
      docs = file("nsa_cisa_v1/docs/network_hardening/cpu_limit.md")
      query = file("queries/network_hardening/deployment_cpu_limit.sql")
    }

    check "job_cpu_limit" {
      title = "Jobs"
      docs = file("nsa_cisa_v1/docs/network_hardening/cpu_limit.md")
      query = file("queries/network_hardening/job_cpu_limit.sql")
    }

    check "namespace_limit_range_default_cpu_limit" {
      title = "Namespaces CPU limit range default"
      docs = file("nsa_cisa_v1/docs/network_hardening/cpu_limit.md")
      query = file("queries/network_hardening/namespace_limit_range.sql")
    }

    check "namespace_resource_quota_cpu_limit" {
      title = "Namespaces CPU limit resource quota"
      docs = file("nsa_cisa_v1/docs/network_hardening/cpu_limit.md")
      query = file("queries/network_hardening/namespace_resource_quota.sql")
    }

    check "replicaset_cpu_limit" {
      title = "ReplciaSets"
      docs = file("nsa_cisa_v1/docs/network_hardening/cpu_limit.md")
      query = file("queries/network_hardening/replicaset_cpu_limit.sql")
    }
  }

  policy "cpu_request" {
    title = "Containers CPU request"
    docs = file("nsa_cisa_v1/docs/network_hardening/cpu_request.md")

    check "daemonset_cpu_request" {
      title = "DeamonSets"
        docs = file("nsa_cisa_v1/docs/network_hardening/cpu_request.md")
      query = file("queries/network_hardening/daemonset_cpu_request.sql")
    }

    check "deployment_cpu_request" {
      title = "Deployments"
      docs = file("nsa_cisa_v1/docs/network_hardening/cpu_request.md")
      query = file("queries/network_hardening/deployment_cpu_request.sql")
    }

    check "job_cpu_request" {
      title = "Jobs"
      docs = file("nsa_cisa_v1/docs/network_hardening/cpu_request.md")
      query = file("queries/network_hardening/job_cpu_request.sql")
    }

    check "namespace_limit_range_default_cpu_request" {
      title = "Namespace CPU request limit range default"
      docs = file("nsa_cisa_v1/docs/network_hardening/namespace_limit_range.md")
      query = file("queries/network_hardening/namespace_limit_range_default_cpu_request.sql")
    }

    check "namespace_resource_quota_cpu_request" {
      title = "Namespaces CPU request resource quota"
      docs = file("nsa_cisa_v1/docs/network_hardening/namespace_resource_quota.md")
      query = file("queries/network_hardening/namespace_resource_quota_cpu_request.sql")
    }

    check "replicaset_cpu_request" {
      title = "ReplciaSets"
      docs = file("nsa_cisa_v1/docs/network_hardening/cpu_request.md")
      query = file("queries/network_hardening/replicaset_cpu_request.sql")
    }
  }

  policy "control_plane_hardening" {
    title = "Ensure contorl plane hardening"
    docs = file("nsa_cisa_v1/docs/network_hardening/control_plane_hardening.md")

    check "endpoint_api_serve_on_secure_port" {
      title = "Endpoint API served on secure port"
      docs = file("nsa_cisa_v1/docs/network_hardening/endpoint_api_serve_on_secure_port.md")
      query = file("queries/network_hardening/endpoint_api_serve_on_secure_port.sql")
    }
  }

  policy "memory_limit" {
    title = "Ensure memeory limits set"
    docs = file("nsa_cisa_v1/docs/network_hardening/memory_limit.md")

    check "daemonset_memory_limit" {
      title = "DeamonSets"
      docs = file("nsa_cisa_v1/docs/network_hardening/memeory_limit.md")
      query = file("queries/network_hardening/daemonset_memory_limit.sql")
    }

    check "deployment_memory_limit" {
      title = "Deployments"
      docs = file("nsa_cisa_v1/docs/network_hardening/memory_limit.md")
      query = file("queries/network_hardening/deployment_memory_limit.sql")
    }

    check "job_memory_limit" {
      title = "Jobs"
      docs = file("nsa_cisa_v1/docs/network_hardening/memory_limit.md")
      query = file("queries/network_hardening/job_memory_limit.sql")
    }

    check "namespace_limit_range_default_memory_limit" {
      title = "Namespace memory limit range default"
      docs = file("nsa_cisa_v1/docs/network_hardening/namespace_limit_range.md")
      query = file("queries/network_hardening/namespace_limit_range_default_memory_limit.sql")
    }

    check "namespace_resource_quota_memory_limit" {
      title = "Namespace memory limit resource quota"
      docs = file("nsa_cisa_v1/docs/network_hardening/namespace_resource_quota.md")
      query = file("queries/network_hardening/namespace_resource_quota_memory_limit.sql")
    }

    check "replicaset_memory_limit" {
      title = "Replicasets"
      docs = file("nsa_cisa_v1/docs/network_hardening/memory_limit.md")
      query = file("queries/network_hardening/replicaset_memory_limit.sql")
    }
  }

  policy "memory_request" {
    title = "Ensure memory requests set"
    docs = file("nsa_cisa_v1/docs/network_hardening/memory_request.md")

    check "daemonset_memory_request" {
      title = "DeamonSets"
      docs = file("nsa_cisa_v1/docs/network_hardening/memory_request.md")
      query = file("queries/network_hardening/daemonset_memory_request.sql")
    }

    check "deployment_memory_request" {
      title = "Deployments"
      docs = file("nsa_cisa_v1/docs/network_hardening/memory_request.md")
      query = file("queries/network_hardening/deployment_memory_request.sql")
    }

    check "job_memory_request" {
      tile = "Jobs"
      docs = file("nsa_cisa_v1/docs/network_hardening/memory_request.md")
      query = file("queries/network_hardening/job_memory_request.sql")
    }

    check "namespace_limit_range_default_memory_request" {
      title = "Namespace memory request limit range default"
      docs = file("nsa_cisa_v1/docs/network_hardening/namespace_limit_range.md")
      query = file("queries/network_hardening/namespace_limit_range_default_memory_request.sql")
    }

    check "namespace_resource_quota_memory_request" {
      title = "Namespace memory request resource quota"
      docs = file("nsa_cisa_v1/docs/namespace_resource_quota_memory_request.md")
      query = file("queries/network_hardening/namespace_resource_quota_memory_request.sql")
    }

    check "replicaset_memory_request" {
      title = "ReplicaSets"
      docs = file("nsa_cisa_v1/docs/network_hardening/memory_request.md")
      query = file("queries/network_hardening/replicaset_memory_request.sql")
    }
  }

  policy "default_deny_network_policy" {
    title = "Enforce default deny network policy"
    docs = file("nsa_cisa_v1/docs/network_hardening/default_deny_network_policy.md")

    check "network_policy_default_deny_egress" {
      title = "Network policy default deny egress"
      docs = file("nsa_cisa_v1/docs/network_hardening/network_policy_default_deny_egress.md")
      query = file("queries/network_hardening/network_policy_default_deny_egress.sql")
    }

    check "network_policy_default_deny_ingress" {
      title = "Network policy default deny ingress"
      docs = file("nsa_cisa_v1/docs/network_hardening/network_policy_default_deny_ingress.md")
      query = file("queries/network_hardening/network_policy_default_deny_ingress.sql")
    }

    check "network_policy_default_dont_allow_egress" {
      title = "Network policy default don't allow egress"
      docs = file("nsa_cisa_v1/docs/network_hardening/network_policy_default_dont_allow_egress.md")
      query = file("queries/network_hardening/network_policy_default_dont_allow_egress.sql")
    }

    check "network_policy_default_dont_allow_ingress" {
        title = "Network policy default don't allow ingress"
      docs = file("nsa_cisa_v1/docs/network_hardening/network_policy_default_dont_allow_ingress.md")
      query = file("queries/network_hardening/network_policy_default_dont_allow_ingress.sql")
    }
  }
}
