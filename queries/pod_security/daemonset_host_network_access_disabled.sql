SELECT
    uid,
    name AS pod_name,
    namespace,
    context
FROM k8s_apps_daemon_sets
WHERE template -> 'spec' ->> 'hostNetwork' = 'true';
