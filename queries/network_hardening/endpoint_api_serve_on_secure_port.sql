SELECT context
FROM k8s_core_endpoint_subset_ports
    JOIN k8s_core_endpoint_subsets
        ON k8s_core_endpoint_subsets.cq_id = k8s_core_endpoint_subset_ports.endpoint_subset_cq_id
    JOIN k8s_core_endpoints ON k8s_core_endpoints.cq_id = k8s_core_endpoint_subsets.endpoint_cq_id
WHERE k8s_core_endpoints.name = 'kubernetes'
    AND NOT (
        k8s_core_endpoint_subset_ports.name = 'https'
        AND (
            k8s_core_endpoint_subset_ports.port = '443'
            OR k8s_core_endpoint_subset_ports.port = '6443'
        )
    );
