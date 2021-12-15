WITH deny_count AS (
    SELECT k8s_core_namespaces.uid,
           k8s_core_namespaces.name AS namespace,
           k8s_core_namespaces.context,
           COUNT(*) FILTER (WHERE policy_types @> ARRAY ['Ingress'] AND pod_selector_match_labels::TEXT = '{}')
    FROM k8s_core_namespaces
             LEFT JOIN k8s_networking_network_policies
                       ON k8s_networking_network_policies.namespace = k8s_core_namespaces.name
             LEFT JOIN k8s_networking_network_policy_ingress
                       ON k8s_networking_network_policy_ingress.network_policy_cq_id =
                          k8s_networking_network_policies.cq_id
    WHERE k8s_networking_network_policy_ingress.cq_id IS NULL
    GROUP BY k8s_core_namespaces.name,
             k8s_core_namespaces.uid,
             k8s_core_namespaces.context
)
SELECT uid,
       namespace,
       context
FROM deny_count
WHERE count = 0;
