SELECT
    uid,
    name AS pod_name,
    namespace,
    context
FROM k8s_apps_deployments,
    JSONB_ARRAY_ELEMENTS(template -> 'spec' -> 'containers') AS c
WHERE c -> 'securityContext' ->> 'allowPrivilegeEscalation' IS DISTINCT FROM 'false';
