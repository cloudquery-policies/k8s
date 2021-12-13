SELECT uid,
       name AS pod_name,
       namespace,
       context
FROM k8s_apps_daemon_sets,
     JSONB_ARRAY_ELEMENTS(template -> 'spec' -> 'containers') AS c
WHERE c -> 'securityContext' ->> 'runAsNonRoot' IS DISTINCT FROM 'true';
