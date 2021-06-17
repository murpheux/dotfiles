# kubectl-get
# Autogenerated from man page /usr/lib/jvm/default/man/man1/kubectl-get.1.gz
complete -c kubectl-get -s A -l all-namespaces -d '	If present, list the requested object(s) across all namespaces'
complete -c kubectl-get -l allow-missing-template-keys -d '	If true, ignore any errors in templates when a field or map key is missing i…'
complete -c kubectl-get -l chunk-size -d '	Return large lists in chunks rather than all at once.  Pass 0 to disable'
complete -c kubectl-get -l field-selector -d '	Selector (field query) to filter on, supports \'=\', \'==\', and \'!=\'. (e. g'
complete -c kubectl-get -s f -l filename -d '	Filename, directory, or URL to files identifying the resource to get from a …'
complete -c kubectl-get -l ignore-not-found -d '	If the requested object does not exist the command will return exit code 0'
complete -c kubectl-get -s k -l kustomize -d '	Process the kustomization directory'
complete -c kubectl-get -s L -l label-columns -d '	Accepts a comma separated list of labels that are going to be presented as c…'
complete -c kubectl-get -l no-headers -d '	When using the default or custom-column output format, don\'t print headers (…'
complete -c kubectl-get -s o -l output -d '	Output format.  One of: json|yaml|wide|name|custom-columns='
complete -c kubectl-get -l output-watch-events -d '	Output watch event objects when --watch or --watch-only is used'
complete -c kubectl-get -l raw -d '	Raw URI to request from the server'
complete -c kubectl-get -s R -l recursive -d '	Process the directory used in -f, --filename recursively'
complete -c kubectl-get -s l -l selector -d '	Selector (label query) to filter on, supports \'=\', \'==\', and \'!=\'. (e. g'
complete -c kubectl-get -l server-print -d '	If true, have the server return the appropriate table output'
complete -c kubectl-get -l show-kind -d '	If present, list the resource type for the requested object(s)'
complete -c kubectl-get -l show-labels -d '	When printing, show all labels as the last column (default hide labels colum…'
complete -c kubectl-get -l show-managed-fields -d '	If true, keep the managedFields when printing objects in JSON or YAML format'
complete -c kubectl-get -l sort-by -d '	If non-empty, sort list types using this field specification'
complete -c kubectl-get -l template -d '	Template string or path to template file to use when -o=go-template, -o=go-t…'
complete -c kubectl-get -l use-openapi-print-columns -d '	If true, use x-kubernetes-print-column metadata (if present) from the OpenAP…'
complete -c kubectl-get -s w -l watch -d '	After listing/getting the requested object, watch for changes'
complete -c kubectl-get -l watch-only -d '	Watch for changes to the requested object(s), without listing/getting first'
complete -c kubectl-get -l add-dir-header -d '	If true, adds the file directory to the header of the log messages'
complete -c kubectl-get -l alsologtostderr -d '	log to standard error as well as files'
complete -c kubectl-get -l application-metrics-count-limit -d '	Max number of application metrics to store (per container)'
complete -c kubectl-get -l as -d '	Username to impersonate for the operation'
complete -c kubectl-get -l as-group -d '	Group to impersonate for the operation, this flag can be repeated to specify…'
complete -c kubectl-get -l azure-container-registry-config -d '	Path to the file containing Azure container registry configuration informati…'
complete -c kubectl-get -l boot-id-file -d '	Comma-separated list of files to check for boot-id'
complete -c kubectl-get -l cache-dir -d '	Default cache directory'
complete -c kubectl-get -l certificate-authority -d '	Path to a cert file for the certificate authority'
complete -c kubectl-get -l client-certificate -d '	Path to a client certificate file for TLS'
complete -c kubectl-get -l client-key -d '	Path to a client key file for TLS'
complete -c kubectl-get -l cloud-provider-gce-l7lb-src-cidrs -d '	CIDRs opened in GCE firewall for L7 LB traffic proxy  health checks'
complete -c kubectl-get -l cloud-provider-gce-lb-src-cidrs -d '	CIDRs opened in GCE firewall for L4 LB traffic proxy  health checks'
complete -c kubectl-get -l cluster -d '	The name of the kubeconfig cluster to use'
complete -c kubectl-get -l container-hints -d '	location of the container hints file'
complete -c kubectl-get -l containerd -d '	containerd endpoint'
complete -c kubectl-get -l containerd-namespace -d '	containerd namespace'
complete -c kubectl-get -l context -d '	The name of the kubeconfig context to use'
complete -c kubectl-get -l default-not-ready-toleration-seconds -d '	Indicates the tolerationSeconds of the toleration for notReady:NoExecute tha…'
complete -c kubectl-get -l default-unreachable-toleration-seconds -d '	Indicates the tolerationSeconds of the toleration for unreachable:NoExecute …'
complete -c kubectl-get -l disable-root-cgroup-stats -d '	Disable collecting root Cgroup stats'
complete -c kubectl-get -l docker -d '	docker endpoint'
complete -c kubectl-get -l docker-env-metadata-whitelist -d '	a comma-separated list of environment variable keys matched with specified p…'
complete -c kubectl-get -l docker-only -d '	Only report docker containers in addition to root stats'
complete -c kubectl-get -l docker-root -d '	DEPRECATED: docker root is read from docker info (this is a fallback, defaul…'
complete -c kubectl-get -l docker-tls -d '	use TLS to connect to docker'
complete -c kubectl-get -l docker-tls-ca -d '	path to trusted CA'
complete -c kubectl-get -l docker-tls-cert -d '	path to client certificate'
complete -c kubectl-get -l docker-tls-key -d '	path to private key'
complete -c kubectl-get -l enable-load-reader -d '	Whether to enable cpu load reader'
complete -c kubectl-get -l event-storage-age-limit -d '	Max length of time for which to store events (per type)'
complete -c kubectl-get -l event-storage-event-limit -d '	Max number of events to store (per type)'
complete -c kubectl-get -l global-housekeeping-interval -d '	Interval between global housekeepings'
complete -c kubectl-get -l housekeeping-interval -d '	Interval between container housekeepings'
complete -c kubectl-get -l insecure-skip-tls-verify -d '	If true, the server\'s certificate will not be checked for validity'
complete -c kubectl-get -l kubeconfig -d '	Path to the kubeconfig file to use for CLI requests'
complete -c kubectl-get -l log-backtrace-at -d '	when logging hits line file:N, emit a stack trace'
complete -c kubectl-get -l log-cadvisor-usage -d '	Whether to log the usage of the cAdvisor container'
complete -c kubectl-get -l log-dir -d '	If non-empty, write log files in this directory'
complete -c kubectl-get -l log-file -d '	If non-empty, use this log file'
complete -c kubectl-get -l log-file-max-size -d '	Defines the maximum size a log file can grow to.  Unit is megabytes'
complete -c kubectl-get -l log-flush-frequency -d '	Maximum number of seconds between log flushes'
complete -c kubectl-get -l logtostderr -d '	log to standard error instead of files'
complete -c kubectl-get -l machine-id-file -d '	Comma-separated list of files to check for machine-id'
complete -c kubectl-get -l match-server-version -d '	Require server version to match client version'
complete -c kubectl-get -s n -l namespace -d '	If present, the namespace scope for this CLI request'
complete -c kubectl-get -l one-output -d '	If true, only write logs to their native severity level (vs also writing to …'
complete -c kubectl-get -l password -d '	Password for basic authentication to the API server'
complete -c kubectl-get -l profile -d '	Name of profile to capture'
complete -c kubectl-get -l profile-output -d '	Name of the file to write the profile to'
complete -c kubectl-get -l referenced-reset-interval -d '	Reset interval for referenced bytes (container_referenced_bytes metric), num…'
complete -c kubectl-get -l request-timeout -d '	The length of time to wait before giving up on a single server request'
complete -c kubectl-get -s s -l server -d '	The address and port of the Kubernetes API server'
complete -c kubectl-get -l skip-headers -d '	If true, avoid header prefixes in the log messages'
complete -c kubectl-get -l skip-log-headers -d '	If true, avoid headers when opening log files'
complete -c kubectl-get -l stderrthreshold -d '	logs at or above this threshold go to stderr'
complete -c kubectl-get -l storage-driver-buffer-duration -d '	Writes in the storage driver will be buffered for this duration, and committ…'
complete -c kubectl-get -l storage-driver-db -d '	database name'
complete -c kubectl-get -l storage-driver-host -d '	database host:port'
complete -c kubectl-get -l storage-driver-password -d '	database password'
complete -c kubectl-get -l storage-driver-secure -d '	use secure connection with database'
complete -c kubectl-get -l storage-driver-table -d '	table name'
complete -c kubectl-get -l storage-driver-user -d '	database username'
complete -c kubectl-get -l tls-server-name -d '	Server name to use for server certificate validation'
complete -c kubectl-get -l token -d '	Bearer token for authentication to the API server'
complete -c kubectl-get -l update-machine-info-interval -d '	Interval between machine info updates'
complete -c kubectl-get -l user -d '	The name of the kubeconfig user to use'
complete -c kubectl-get -l username -d '	Username for basic authentication to the API server'
complete -c kubectl-get -s v -l v -d '	number for the log level verbosity'
complete -c kubectl-get -l version -d '	Print version information and quit'
complete -c kubectl-get -l vmodule -d '	comma-separated list of pattern=N settings for file-filtered logging'
complete -c kubectl-get -l warnings-as-errors -d '	Treat warnings received from the server as errors and exit with a non-zero e…'

