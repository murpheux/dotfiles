# oc-logs
# Autogenerated from man page /usr/lib/jvm/default/man/man1/oc-logs.1.gz
complete -c oc-logs -l all-containers -d '    Get all containers\' logs in the pod(s)'
complete -c oc-logs -s c -l container -d '    Print the logs of this container'
complete -c oc-logs -s f -l follow -d '    Specify if the logs should be streamed'
complete -c oc-logs -l ignore-errors -d '    If watching / following pod logs, allow for any errors that occur to be n…'
complete -c oc-logs -l insecure-skip-tls-verify-backend -d '    Skip verifying the identity of the kubelet that logs are requested from'
complete -c oc-logs -l limit-bytes -d '    Maximum bytes of logs to return.  Defaults to no limit'
complete -c oc-logs -l max-log-requests -d '    Specify maximum number of concurrent logs to follow when using by a selec…'
complete -c oc-logs -l pod-running-timeout -d '    The length of time (like 5s, 2m, or 3h, higher than zero) to wait until a…'
complete -c oc-logs -l prefix -d '    Prefix each log line with the log source (pod name and container name)'
complete -c oc-logs -s p -l previous -d '    If true, print the logs for the previous instance of the container in a p…'
complete -c oc-logs -s l -l selector -d '    Selector (label query) to filter on'
complete -c oc-logs -l since -d '    Only return logs newer than a relative duration like 5s, 2m, or 3h'
complete -c oc-logs -l since-time -d '    Only return logs after a specific date (RFC3339).  Defaults to all logs'
complete -c oc-logs -l tail -s 1 -d '    Lines of recent log file to display'
complete -c oc-logs -l timestamps -d '    Include timestamps on each line in the log output'
complete -c oc-logs -l version -d '    View the logs of a particular build or deployment by version if greater t…'
complete -c oc-logs -l as -d '    Username to impersonate for the operation'
complete -c oc-logs -l as-group -d '    Group to impersonate for the operation, this flag can be repeated to spec…'
complete -c oc-logs -l cache-dir -d '    Default cache directory'
complete -c oc-logs -l certificate-authority -d '    Path to a cert file for the certificate authority'
complete -c oc-logs -l client-certificate -d '    Path to a client certificate file for TLS'
complete -c oc-logs -l client-key -d '    Path to a client key file for TLS'
complete -c oc-logs -l cluster -d '    The name of the kubeconfig cluster to use'
complete -c oc-logs -l context -d '    The name of the kubeconfig context to use'
complete -c oc-logs -l insecure-skip-tls-verify -d '    If true, the server\'s certificate will not be checked for validity'
complete -c oc-logs -l kubeconfig -d '    Path to the kubeconfig file to use for CLI requests'
complete -c oc-logs -l match-server-version -d '    Require server version to match client version'
complete -c oc-logs -s n -l namespace -d '    If present, the namespace scope for this CLI request'
complete -c oc-logs -l request-timeout -d '    The length of time to wait before giving up on a single server request'
complete -c oc-logs -s s -l server -d '    The address and port of the Kubernetes API server'
complete -c oc-logs -l tls-server-name -d '    Server name to use for server certificate validation'
complete -c oc-logs -l token -d '    Bearer token for authentication to the API server'
complete -c oc-logs -l user -d '    The name of the kubeconfig user to use EXAMPLE   # Start streaming the lo…'

