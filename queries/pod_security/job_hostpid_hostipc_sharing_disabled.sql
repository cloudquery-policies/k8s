SELECT
    uid,
    name AS pod_name,
    namespace,
    context
FROM k8s_batch_jobs
WHERE template -> 'spec' ->> 'hostPID' = 'true'
      OR template -> 'spec' ->> 'hostIPC' = 'true';
