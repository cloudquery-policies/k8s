SELECT DISTINCT(k8s_core_namespaces.uid),
    k8s_core_namespaces.name,
    k8s_core_namespaces.context
FROM k8s_core_namespaces
    LEFT JOIN k8s_core_resource_quotas
        ON k8s_core_resource_quotas.namespace = k8s_core_namespaces.name
WHERE
    hard -> 'requests.cpu' IS NULL
    AND hard -> 'cpu' IS NULL;
