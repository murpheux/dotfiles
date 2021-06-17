# oc-apply
# Autogenerated from man page /usr/lib/jvm/default/man/man1/oc-apply.1.gz
complete -c oc-apply -l all -d '    Select all resources in the namespace of the specified resource types'
complete -c oc-apply -l allow-missing-template-keys -d '    If true, ignore any errors in templates when a field or map key is missin…'
complete -c oc-apply -l cascade -d '    If true, cascade the deletion of the resources managed by this resource (e'
complete -c oc-apply -l dry-run -d '    Must be "none", "server", or "client"'
complete -c oc-apply -l field-manager -d '    Name of the manager used to track field ownership'
complete -c oc-apply -s f -l filename -d '    that contains the configuration to apply'
complete -c oc-apply -l force -d '    If true, immediately remove resources from API and bypass graceful deleti…'
complete -c oc-apply -l force-conflicts -d '    If true, server-side apply will force the changes against conflicts'
complete -c oc-apply -l grace-period -s 1 -d '    Period of time in seconds given to the resource to terminate gracefully'
complete -c oc-apply -s k -l kustomize -d '    Process a kustomization directory'
complete -c oc-apply -l openapi-patch -d '    If true, use openapi to calculate diff when the openapi presents and the …'
complete -c oc-apply -s o -l output -d '    Output format'
complete -c oc-apply -l overwrite -d '    Automatically resolve conflicts between the modified and live configurati…'
complete -c oc-apply -l prune -d '    Automatically delete resource objects, including the uninitialized ones, …'
complete -c oc-apply -l prune-whitelist -d '    Overwrite the default whitelist with <group/version/kind> for --prune'
complete -c oc-apply -l record -d '    Record current kubectl command in the resource annotation'
complete -c oc-apply -s R -l recursive -d '    Process the directory used in -f, --filename recursively'
complete -c oc-apply -s l -l selector -d '    Selector (label query) to filter on, supports \'=\', \'==\', and \'!=\'. (e. g'
complete -c oc-apply -l server-side -d '    If true, apply runs in the server instead of the client'
complete -c oc-apply -l template -d '    Template string or path to template file to use when -o=go-template, -o=g…'
complete -c oc-apply -l timeout -d '    The length of time to wait before giving up on a delete, zero means deter…'
complete -c oc-apply -l validate -d '    If true, use a schema to validate the input before sending it'
complete -c oc-apply -l wait -d '    If true, wait for resources to be gone before returning'
complete -c oc-apply -l as -d '    Username to impersonate for the operation'
complete -c oc-apply -l as-group -d '    Group to impersonate for the operation, this flag can be repeated to spec…'
complete -c oc-apply -l cache-dir -d '    Default cache directory'
complete -c oc-apply -l certificate-authority -d '    Path to a cert file for the certificate authority'
complete -c oc-apply -l client-certificate -d '    Path to a client certificate file for TLS'
complete -c oc-apply -l client-key -d '    Path to a client key file for TLS'
complete -c oc-apply -l cluster -d '    The name of the kubeconfig cluster to use'
complete -c oc-apply -l context -d '    The name of the kubeconfig context to use'
complete -c oc-apply -l insecure-skip-tls-verify -d '    If true, the server\'s certificate will not be checked for validity'
complete -c oc-apply -l kubeconfig -d '    Path to the kubeconfig file to use for CLI requests'
complete -c oc-apply -l match-server-version -d '    Require server version to match client version'
complete -c oc-apply -s n -l namespace -d '    If present, the namespace scope for this CLI request'
complete -c oc-apply -l request-timeout -d '    The length of time to wait before giving up on a single server request'
complete -c oc-apply -s s -l server -d '    The address and port of the Kubernetes API server'
complete -c oc-apply -l tls-server-name -d '    Server name to use for server certificate validation'
complete -c oc-apply -l token -d '    Bearer token for authentication to the API server'
complete -c oc-apply -l user -d '    The name of the kubeconfig user to use EXAMPLE   # Apply the configuratio…'

