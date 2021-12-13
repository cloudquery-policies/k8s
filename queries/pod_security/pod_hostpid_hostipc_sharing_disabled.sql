SELECT uid,
       name AS pod_name,
       namespace,
       context
FROM k8s_core_pods
WHERE host_pid
   OR host_ipc;
