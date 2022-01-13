SELECT
    uid,
    k8s_core_pods.name AS pod_name,
    namespace,
    context
FROM k8s_core_pod_containers
     JOIN k8s_core_pods ON k8s_core_pods.cq_id = k8s_core_pod_containers.pod_cq_id
WHERE k8s_core_pod_containers.security_context ->> 'readOnlyRootFilesystem' IS DISTINCT FROM 'true';
