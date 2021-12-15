SELECT uid,
       namespace,
       context
FROM k8s_networking_network_policies
         LEFT JOIN k8s_networking_network_policy_ingress
                   ON k8s_networking_network_policy_ingress.network_policy_cq_id =
                      k8s_networking_network_policies.cq_id
         LEFT JOIN k8s_networking_network_policy_ingress_ports
                   ON k8s_networking_network_policy_ingress_ports.network_policy_ingress_cq_id =
                      k8s_networking_network_policy_ingress.network_policy_uid::UUID
         LEFT JOIN k8s_networking_network_policy_ingress_from
                   ON k8s_networking_network_policy_ingress_from.network_policy_ingress_cq_id =
                      k8s_networking_network_policy_ingress.network_policy_uid::UUID
WHERE k8s_networking_network_policy_ingress_ports.network_policy_ingress_cq_id IS NULL
   OR k8s_networking_network_policy_ingress_from.network_policy_ingress_cq_id IS NULL
GROUP BY namespace,
         name,
         uid,
         context,
         policy_types;
