SELECT uid,
       name AS pod_name,
       namespace,
       context
FROM k8s_batch_jobs,
    JSONB_ARRAY_ELEMENTS(template -> 'spec' -> 'containers') AS c
WHERE c -> 'resources' -> 'requests' ->> 'memory' IS NULL;
