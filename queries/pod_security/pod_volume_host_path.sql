SELECT DISTINCT uid,
                k8s_core_pods.name AS pod_name,
                namespace,
                context
FROM k8s_core_pod_volumes
         JOIN k8s_core_pods ON k8s_core_pods.cq_id = k8s_core_pod_volumes.pod_cq_id
WHERE host_path ->> 'path' IS NOT NULL;
