# oc-proxy
# Autogenerated from man page /usr/lib/jvm/default/man/man1/oc-proxy.1.gz
complete -c oc-proxy -l accept-hosts -d '    Regular expression for hosts that the proxy should accept'
complete -c oc-proxy -l accept-paths -d '    Regular expression for paths that the proxy should accept'
complete -c oc-proxy -l address -d '    The IP address on which to serve on'
complete -c oc-proxy -l api-prefix -d '    Prefix to serve the proxied API under'
complete -c oc-proxy -l disable-filter -d '    If true, disable request filtering in the proxy'
complete -c oc-proxy -l keepalive -d '    keepalive specifies the keep-alive period for an active network connection'
complete -c oc-proxy -s p -l port -d '    The port on which to run the proxy.  Set to 0 to pick a random port'
complete -c oc-proxy -l reject-methods -d '    Regular expression for HTTP methods that the proxy should reject (example…'
complete -c oc-proxy -l reject-paths -d '    Regular expression for paths that the proxy should reject'
complete -c oc-proxy -s u -l unix-socket -d '    Unix socket on which to run the proxy'
complete -c oc-proxy -s w -l www -d '    Also serve static files from the given directory under the specified pref…'
complete -c oc-proxy -s P -l www-prefix -d '    Prefix to serve static files under, if static file directory is specified'
complete -c oc-proxy -l as -d '    Username to impersonate for the operation'
complete -c oc-proxy -l as-group -d '    Group to impersonate for the operation, this flag can be repeated to spec…'
complete -c oc-proxy -l cache-dir -d '    Default cache directory'
complete -c oc-proxy -l certificate-authority -d '    Path to a cert file for the certificate authority'
complete -c oc-proxy -l client-certificate -d '    Path to a client certificate file for TLS'
complete -c oc-proxy -l client-key -d '    Path to a client key file for TLS'
complete -c oc-proxy -l cluster -d '    The name of the kubeconfig cluster to use'
complete -c oc-proxy -l context -d '    The name of the kubeconfig context to use'
complete -c oc-proxy -l insecure-skip-tls-verify -d '    If true, the server\'s certificate will not be checked for validity'
complete -c oc-proxy -l kubeconfig -d '    Path to the kubeconfig file to use for CLI requests'
complete -c oc-proxy -l match-server-version -d '    Require server version to match client version'
complete -c oc-proxy -s n -l namespace -d '    If present, the namespace scope for this CLI request'
complete -c oc-proxy -l request-timeout -d '    The length of time to wait before giving up on a single server request'
complete -c oc-proxy -s s -l server -d '    The address and port of the Kubernetes API server'
complete -c oc-proxy -l tls-server-name -d '    Server name to use for server certificate validation'
complete -c oc-proxy -l token -d '    Bearer token for authentication to the API server'
complete -c oc-proxy -l user -d '    The name of the kubeconfig user to use EXAMPLE   # To proxy all of the ku…'

