policy "nsa_cisa_v1" {
  title ="NSA and CISA Kubernetes Hardening Guidance v1.0"
  configuration {
    provider "k8s" {
      version = ">= v0.3.0"
    }
  }

  policy "pod_security" {
    source = file("nsa_cisa_v1/pod_security.hcl")
  }

  policy "network_hardening" {
    title ="Network Separation and Hardening"

    policy "cpu_limit" {
      title ="Containers should have CPU limit which restricts the container to use no more than a given amount of CPU."

      check "daemonset_cpu_limit" {
        title ="Containers in a DaemonSet should have CPU limit which restricts the container to use no more than a given amount of CPU."
        query = file("queries/network_hardening/daemonset_cpu_limit.sql")
      }

      check "deployment_cpu_limit" {
        title ="Containers in a Deployment should have CPU limit which restricts the container to use no more than a given amount of CPU."
        query = file("queries/network_hardening/deployment_cpu_limit.sql")
      }

      check "job_cpu_limit" {
        title ="Containers in a Job should have CPU limit which restricts the container to use no more than a given amount of CPU."
        query = file("queries/network_hardening/job_cpu_limit.sql")
      }

      check "namespace_limit_range_default_cpu_limit" {
        title ="Administrators should use default limitRange policy for CPU limit for each namespace."
        query = file("queries/network_hardening/namespace_limit_range_default_cpu_limit.sql")
      }

      check "namespace_resource_quota_cpu_limit" {
        title ="Administrators should use resourceQuota CPU limit to restrict namespaces CPU usage."
        query = file("queries/network_hardening/namespace_resource_quota_cpu_limit.sql")
      }

      check "replicaset_cpu_limit" {
        title ="Containers in a ReplicaSet should have CPU limit which restricts the container to use no more than a given amount of CPU."
        query = file("queries/network_hardening/replicaset_cpu_limit.sql")
    }

    policy "cpu_request" {
      title ="Containers should have CPU request. If required Kubernetes will make sure your containers get the CPU they requested."

      check "daemonset_cpu_request" {
        title ="Containers in a DaemonSet should have CPU request. If required Kubernetes will make sure your containers get the CPU they requested."
        query = file("queries/network_hardening/daemonset_cpu_request.sql")
      }

      check "deployment_cpu_request" {
        title ="Containers in a Deployment should have CPU request. If required Kubernetes will make sure your containers get the CPU they requested."
        query = file("queries/network_hardening/deployment_cpu_request.sql")
      }

      check "job_cpu_request" {
        title ="Containers in a Job should have CPU request. If required Kubernetes will make sure your containers get the CPU they requested."
        query = file("queries/network_hardening/job_cpu_request.sql")
      }

      check "namespace_limit_range_default_cpu_request" {
        title ="Administrators should use default limitRange policy for CPU request for each namespace."
        query = file("queries/network_hardening/namespace_limit_range_default_cpu_request.sql")
      }

      check "namespace_resource_quota_cpu_request" {
        title ="Administrators should use resourceQuota CPU request for each namespace."
        query = file("queries/network_hardening/namespace_resource_quota_cpu_request.sql")
      }

      check "replicaset_cpu_request" {
        title ="Containers in a ReplicaSet should have CPU request. If required Kubernetes will make sure your containers get the CPU they requested."
        query = file("queries/network_hardening/replicaset_cpu_request.sql")
      }
    }

    policy "api_serve_on_secure_port_endpoint" {
      title ="Kubernetes API should serve on port 443 or port 6443, protected by TLS. Once TLS is established, the HTTP request moves to the authentication step. If the request cannot be authenticated, it is rejected with HTTP status code 401."

      check "endpoint_api_serve_on_secure_port" {
        title ="Kubernetes API should serve on port 443 or port 6443, protected by TLS. Once TLS is established, the HTTP request moves to the authentication step. If the request cannot be authenticated, it is rejected with HTTP status code 401."
        query = file("queries/network_hardening/endpoint_api_serve_on_secure_port.sql")
      }
    }

    policy "memory_limit" {
      title ="Containers should have a memory limit which restricts the container to use no more than a given amount of user or system memory."

      check "daemonset_memory_limit" {
        title ="Containers in a DaemonSet should have memory limit which restricts the container to use no more than a given amount of user or system memory."
        query = file("queries/network_hardening/daemonset_memory_limit.sql")
      }

      check "deployment_memory_limit" {
        title ="Containers in a Deployment should have memory limit which restricts the container to use no more than a given amount of user or system memory."
        query = file("queries/network_hardening/deployment_memory_limit.sql")
      }

      check "job_memory_limit" {
        title ="Containers in a Job should have memory limit which restricts the container to use no more than a given amount of user or system memory."
        query = file("queries/network_hardening/job_memory_limit.sql")
      }

      check "namespace_limit_range_default_memory_limit" {
        title ="Administrators should use default limitRange policy for memory limit for each namespace."
        query = file("queries/network_hardening/namespace_limit_range_default_memory_limit.sql")
      }

      check "namespace_resource_quota_memory_limit" {
        title ="Administrators should use resourceQuota memory limit to restrict namespaces memory usage."
        query = file("queries/network_hardening/namespace_resource_quota_memory_limit.sql")
      }

      check "replicaset_memory_limit" {
        title ="Containers in a ReplicaSet should have memory limit which restricts the container to use no more than a given amount of user or system memory."
        query = file("queries/network_hardening/replicaset_memory_limit.sql")
      }
    }

    policy "memory_request" {
      title ="Containers should have memory request. If required Kubernetes will make sure your containers get the memory they requested."

      check "daemonset_memory_request" {
        title ="Containers in a DaemonSet should have memory request. If required Kubernetes will make sure your containers get the memory they requested."
        query = file("queries/network_hardening/daemonset_memory_request.sql")
      }

      check "deployment_memory_request" {
        title ="Containers in a Deployment should have memory request. If required Kubernetes will make sure your containers get the memory they requested."
        query = file("queries/network_hardening/deployment_memory_request.sql")
      }

      check "job_memory_request" {
        title ="Containers in a Job should have memory request. If required Kubernetes will make sure your containers get the memory they requested."
        query = file("queries/network_hardening/job_memory_request.sql")
      }

      check "namespace_limit_range_default_memory_request" {
        title ="Administrators should use default limitRange policy for memory request for each namespace."
        query = file("queries/network_hardening/namespace_limit_range_default_memory_request.sql")
      }

      check "namespace_resource_quota_memory_request" {
        title ="Administrators should use resourceQuota memory request for each namespace."
        query = file("queries/network_hardening/namespace_resource_quota_memory_request.sql")
      }

      check "replicaset_memory_request" {
        title ="Containers in a ReplicaSet should have memory request. If required Kubernetes will make sure your containers get the memory they requested."
        query = file("queries/network_hardening/replicaset_memory_request.sql")
      }
    }

    policy "default_deny_network_policy" {
      title ="Administrators should use a default policy selecting all Pods to deny all ingress and egress traffic and ensure any unselected Pods are isolated. Additional policies could then relax these restrictions for permissible connections."

      check "network_policy_default_deny_egress" {
        title ="Administrators should use a default policy selecting all Pods to deny all egress traffic and ensure any unselected Pods are isolated. Additional policies could then relax these restrictions for permissible connections."
        query = file("queries/network_hardening/network_policy_default_deny_egress.sql")
      }

      check "network_policy_default_deny_ingress" {
        title ="Administrators should use a default policy selecting all Pods to deny all ingress traffic and ensure any unselected Pods are isolated. Additional policies could then relax these restrictions for permissible connections."
        query = file("queries/network_hardening/network_policy_default_deny_ingress.sql")
      }

      check "network_policy_default_dont_allow_egress" {
        title ="Administrators should use a default policy selecting all Pods to deny all ingress and egress traffic and ensure any unselected Pods are isolated. An 'allow all' policy would override this default and should not be used. Instead, use specific policies to relax these restrictions only for permissible connections."
        query = file("queries/network_hardening/network_policy_default_dont_allow_egress.sql")
      }

      check "network_policy_default_dont_allow_ingress" {
        title ="Administrators should use a default policy selecting all Pods to deny all ingress and egress traffic and ensure any unselected Pods are isolated. An 'allow all' policy would override this default and should not be used. Instead, use specific policies to relax these restrictions only for permissible connections."
        query = file("queries/network_hardening/network_policy_default_dont_allow_ingress.sql")
      }
    }
  }
}
