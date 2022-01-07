policy "network_hardening" {
  title = "Network Separation and Hardening"
  docs = file("nsa_cisa_v1/docs/network_hardening.md")

  policy "cpu_limit" {
    docs = file("nsa_cisa_v1/docs/cpu_limit.md")

    check "daemonset_cpu_limit" {
      docs = file("nsa_cisa_v1/docs/daemonset_cpu_limit.md")
      query = file("queries/network_hardening/daemonset_cpu_limit.sql")
    }

    check "deployment_cpu_limit" {
      docs = file("nsa_cisa_v1/docs/deployment_cpu_limit.md")
      query = file("queries/network_hardening/deployment_cpu_limit.sql")
    }

    check "job_cpu_limit" {
      docs = file("nsa_cisa_v1/docs/job_cpu_limit.md")
      query = file("queries/network_hardening/job_cpu_limit.sql")
    }

    check "namespace_limit_range_default_cpu_limit" {
      docs = file("nsa_cisa_v1/docs/namespace_limit_range_default_cpu_limit.md")
      query = file("queries/network_hardening/namespace_limit_range_default_cpu_limit.sql")
    }

    check "namespace_resource_quota_cpu_limit" {
      docs = file("nsa_cisa_v1/docs/namespace_resource_quota_cpu_limit.md")
      query = file("queries/network_hardening/namespace_resource_quota_cpu_limit.sql")
    }

    check "replicaset_cpu_limit" {
      docs = file("nsa_cisa_v1/docs/replicaset_cpu_limit.md")
      query = file("queries/network_hardening/replicaset_cpu_limit.sql")
    }
  }

  policy "cpu_request" {
    docs = file("nsa_cisa_v1/docs/cpu_request.md")

    check "daemonset_cpu_request" {
      docs = file("nsa_cisa_v1/docs/daemonset_cpu_request.md")
      query = file("queries/network_hardening/daemonset_cpu_request.sql")
    }

    check "deployment_cpu_request" {
      docs = file("nsa_cisa_v1/docs/deployment_cpu_request.md")
      query = file("queries/network_hardening/deployment_cpu_request.sql")
    }

    check "job_cpu_request" {
      docs = file("nsa_cisa_v1/docs/job_cpu_request.md")
      query = file("queries/network_hardening/job_cpu_request.sql")
    }

    check "namespace_limit_range_default_cpu_request" {
      docs = file("nsa_cisa_v1/docs/namespace_limit_range_default_cpu_request.md")
      query = file("queries/network_hardening/namespace_limit_range_default_cpu_request.sql")
    }

    check "namespace_resource_quota_cpu_request" {
      docs = file("nsa_cisa_v1/docs/namespace_resource_quota_cpu_request.md")
      query = file("queries/network_hardening/namespace_resource_quota_cpu_request.sql")
    }

    check "replicaset_cpu_request" {
      docs = file("nsa_cisa_v1/docs/replicaset_cpu_request.md")
      query = file("queries/network_hardening/replicaset_cpu_request.sql")
    }
  }

  policy "control_plane_hardening" {
    docs = file("nsa_cisa_v1/docs/control_plane_hardening.md")

    check "endpoint_api_serve_on_secure_port" {
      docs = file("nsa_cisa_v1/docs/endpoint_api_serve_on_secure_port.md")
      query = file("queries/network_hardening/endpoint_api_serve_on_secure_port.sql")
    }
  }

  policy "memory_limit" {
    docs = file("nsa_cisa_v1/docs/memory_limit.md")

    check "daemonset_memory_limit" {
      docs = file("nsa_cisa_v1/docs/daemonset_memory_limit.md")
      query = file("queries/network_hardening/daemonset_memory_limit.sql")
    }

    check "deployment_memory_limit" {
      docs = file("nsa_cisa_v1/docs/deployment_memory_limit.md")
      query = file("queries/network_hardening/deployment_memory_limit.sql")
    }

    check "job_memory_limit" {
      docs = file("nsa_cisa_v1/docs/job_memory_limit.md")
      query = file("queries/network_hardening/job_memory_limit.sql")
    }

    check "namespace_limit_range_default_memory_limit" {
      docs = file("nsa_cisa_v1/docs/namespace_limit_range_default_memory_limit.md")
      query = file("queries/network_hardening/namespace_limit_range_default_memory_limit.sql")
    }

    check "namespace_resource_quota_memory_limit" {
      docs = file("nsa_cisa_v1/docs/namespace_resource_quota_memory_limit.md")
      query = file("queries/network_hardening/namespace_resource_quota_memory_limit.sql")
    }

    check "replicaset_memory_limit" {
      docs = file("nsa_cisa_v1/docs/replicaset_memory_limit.md")
      query = file("queries/network_hardening/replicaset_memory_limit.sql")
    }
  }

  policy "memory_request" {
    docs = file("nsa_cisa_v1/docs/memory_request.md")

    check "daemonset_memory_request" {
      docs = file("nsa_cisa_v1/docs/daemonset_memory_request.md")
      query = file("queries/network_hardening/daemonset_memory_request.sql")
    }

    check "deployment_memory_request" {
      docs = file("nsa_cisa_v1/docs/deployment_memory_request.md")
      query = file("queries/network_hardening/deployment_memory_request.sql")
    }

    check "job_memory_request" {
      docs = file("nsa_cisa_v1/docs/job_memory_request.md")
      query = file("queries/network_hardening/job_memory_request.sql")
    }

    check "namespace_limit_range_default_memory_request" {
      docs = file("nsa_cisa_v1/docs/namespace_limit_range_default_memory_request.md")
      query = file("queries/network_hardening/namespace_limit_range_default_memory_request.sql")
    }

    check "namespace_resource_quota_memory_request" {
      docs = file("nsa_cisa_v1/docs/namespace_resource_quota_memory_request.md")
      query = file("queries/network_hardening/namespace_resource_quota_memory_request.sql")
    }

    check "replicaset_memory_request" {
      docs = file("nsa_cisa_v1/docs/replicaset_memory_request.md")
      query = file("queries/network_hardening/replicaset_memory_request.sql")
    }
  }

  policy "default_deny_network_policy" {
    docs = file("nsa_cisa_v1/docs/default_deny_network_policy.md")

    check "network_policy_default_deny_egress" {
      docs = file("nsa_cisa_v1/docs/network_policy_default_deny_egress.md")
      query = file("queries/network_hardening/network_policy_default_deny_egress.sql")
    }

    check "network_policy_default_deny_ingress" {
      docs = file("nsa_cisa_v1/docs/network_policy_default_deny_ingress.md")
      query = file("queries/network_hardening/network_policy_default_deny_ingress.sql")
    }

    check "network_policy_default_dont_allow_egress" {
      docs = file("nsa_cisa_v1/docs/network_policy_default_dont_allow_egress.md")
      query = file("queries/network_hardening/network_policy_default_dont_allow_egress.sql")
    }

    check "network_policy_default_dont_allow_ingress" {
      docs = file("nsa_cisa_v1/docs/network_policy_default_dont_allow_ingress.md")
      query = file("queries/network_hardening/network_policy_default_dont_allow_ingress.sql")
    }
  }
}
