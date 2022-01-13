SELECT
    uid,
    name AS pod_name,
    namespace,
    context
FROM k8s_apps_replica_sets
WHERE template -> 'spec' ->> 'hostNetwork' = 'true';
