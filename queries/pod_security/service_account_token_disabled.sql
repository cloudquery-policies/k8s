SELECT uid,
       name,
       namespace,
       context
FROM k8s_core_service_accounts
WHERE automount_service_account_token;
