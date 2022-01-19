SELECT
    uid,
    namespace,
    context
FROM k8s_networking_network_policies
    LEFT JOIN k8s_networking_network_policy_egress
        ON k8s_networking_network_policy_egress.network_policy_cq_id =
            k8s_networking_network_policies.cq_id
    LEFT JOIN k8s_networking_network_policy_egress_ports
        ON k8s_networking_network_policy_egress_ports.network_policy_egress_cq_id =
            k8s_networking_network_policy_egress.network_policy_uid::UUID
    LEFT JOIN k8s_networking_network_policy_egress_to
        ON k8s_networking_network_policy_egress_to.network_policy_egress_cq_id =
            k8s_networking_network_policy_egress.network_policy_uid::UUID
WHERE
    k8s_networking_network_policy_egress_ports.network_policy_egress_cq_id IS NULL
    OR k8s_networking_network_policy_egress_to.network_policy_egress_cq_id IS NULL
GROUP BY namespace,
    name,
    uid,
    context,
    policy_types;
