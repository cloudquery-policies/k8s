SELECT
    uid,
    name AS pod_name,
    namespace,
    context
FROM k8s_apps_deployments
WHERE template -> 'spec' ->> 'hostNetwork' = 'true';
