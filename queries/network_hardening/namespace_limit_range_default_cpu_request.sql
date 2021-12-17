WITH default_limit_range AS (
    SELECT namespace,
           default_request
    FROM k8s_core_limit_range_limits
             JOIN k8s_core_limit_ranges ON k8s_core_limit_ranges.cq_id = k8s_core_limit_range_limits.limit_range_cq_id
)
SELECT uid,
       name,
       context
FROM k8s_core_namespaces
         LEFT JOIN default_limit_range
                   ON default_limit_range.namespace = k8s_core_namespaces.name
WHERE default_request ->> 'cpu' IS NULL;
