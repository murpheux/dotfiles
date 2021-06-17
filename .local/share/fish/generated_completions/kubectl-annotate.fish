# kubectl-annotate
# Autogenerated from man page /usr/lib/jvm/default/man/man1/kubectl-annotate.1.gz
complete -c kubectl-annotate -l all -d '	Select all resources, including uninitialized ones, in the namespace of the …'
complete -c kubectl-annotate -l allow-missing-template-keys -d '	If true, ignore any errors in templates when a field or map key is missing i…'
complete -c kubectl-annotate -l dry-run -d '	Must be "none", "server", or "client"'
complete -c kubectl-annotate -l field-manager -d '	Name of the manager used to track field ownership'
complete -c kubectl-annotate -l field-selector -d '	Selector (field query) to filter on, supports \'=\', \'==\', and \'!=\'. (e. g'
complete -c kubectl-annotate -s f -l filename -d '	Filename, directory, or URL to files identifying the resource to update the …'
complete -c kubectl-annotate -s k -l kustomize -d '	Process the kustomization directory'
complete -c kubectl-annotate -l list -d '	If true, display the annotations for a given resource'
complete -c kubectl-annotate -l local -d '	If true, annotation will NOT contact api-server but run locally'
complete -c kubectl-annotate -s o -l output -d '	Output format'
complete -c kubectl-annotate -l overwrite -d '	If true, allow annotations to be overwritten, otherwise reject annotation up…'
complete -c kubectl-annotate -l record -d '	Record current kubectl command in the resource annotation'
complete -c kubectl-annotate -s R -l recursive -d '	Process the directory used in -f, --filename recursively'
complete -c kubectl-annotate -l resource-version -d '	If non-empty, the annotation update will only succeed if this is the current…'
complete -c kubectl-annotate -s l -l selector -d '	Selector (label query) to filter on, not including uninitialized ones, suppo…'
complete -c kubectl-annotate -l show-managed-fields -d '	If true, keep the managedFields when printing objects in JSON or YAML format'
complete -c kubectl-annotate -l template -d '	Template string or path to template file to use when -o=go-template, -o=go-t…'
complete -c kubectl-annotate -l add-dir-header -d '	If true, adds the file directory to the header of the log messages'
complete -c kubectl-annotate -l alsologtostderr -d '	log to standard error as well as files'
complete -c kubectl-annotate -l application-metrics-count-limit -d '	Max number of application metrics to store (per container)'
complete -c kubectl-annotate -l as -d '	Username to impersonate for the operation'
complete -c kubectl-annotate -l as-group -d '	Group to impersonate for the operation, this flag can be repeated to specify…'
complete -c kubectl-annotate -l azure-container-registry-config -d '	Path to the file containing Azure container registry configuration informati…'
complete -c kubectl-annotate -l boot-id-file -d '	Comma-separated list of files to check for boot-id'
complete -c kubectl-annotate -l cache-dir -d '	Default cache directory'
complete -c kubectl-annotate -l certificate-authority -d '	Path to a cert file for the certificate authority'
complete -c kubectl-annotate -l client-certificate -d '	Path to a client certificate file for TLS'
complete -c kubectl-annotate -l client-key -d '	Path to a client key file for TLS'
complete -c kubectl-annotate -l cloud-provider-gce-l7lb-src-cidrs -d '	CIDRs opened in GCE firewall for L7 LB traffic proxy  health checks'
complete -c kubectl-annotate -l cloud-provider-gce-lb-src-cidrs -d '	CIDRs opened in GCE firewall for L4 LB traffic proxy  health checks'
complete -c kubectl-annotate -l cluster -d '	The name of the kubeconfig cluster to use'
complete -c kubectl-annotate -l container-hints -d '	location of the container hints file'
complete -c kubectl-annotate -l containerd -d '	containerd endpoint'
complete -c kubectl-annotate -l containerd-namespace -d '	containerd namespace'
complete -c kubectl-annotate -l context -d '	The name of the kubeconfig context to use'
complete -c kubectl-annotate -l default-not-ready-toleration-seconds -d '	Indicates the tolerationSeconds of the toleration for notReady:NoExecute tha…'
complete -c kubectl-annotate -l default-unreachable-toleration-seconds -d '	Indicates the tolerationSeconds of the toleration for unreachable:NoExecute …'
complete -c kubectl-annotate -l disable-root-cgroup-stats -d '	Disable collecting root Cgroup stats'
complete -c kubectl-annotate -l docker -d '	docker endpoint'
complete -c kubectl-annotate -l docker-env-metadata-whitelist -d '	a comma-separated list of environment variable keys matched with specified p…'
complete -c kubectl-annotate -l docker-only -d '	Only report docker containers in addition to root stats'
complete -c kubectl-annotate -l docker-root -d '	DEPRECATED: docker root is read from docker info (this is a fallback, defaul…'
complete -c kubectl-annotate -l docker-tls -d '	use TLS to connect to docker'
complete -c kubectl-annotate -l docker-tls-ca -d '	path to trusted CA'
complete -c kubectl-annotate -l docker-tls-cert -d '	path to client certificate'
complete -c kubectl-annotate -l docker-tls-key -d '	path to private key'
complete -c kubectl-annotate -l enable-load-reader -d '	Whether to enable cpu load reader'
complete -c kubectl-annotate -l event-storage-age-limit -d '	Max length of time for which to store events (per type)'
complete -c kubectl-annotate -l event-storage-event-limit -d '	Max number of events to store (per type)'
complete -c kubectl-annotate -l global-housekeeping-interval -d '	Interval between global housekeepings'
complete -c kubectl-annotate -l housekeeping-interval -d '	Interval between container housekeepings'
complete -c kubectl-annotate -l insecure-skip-tls-verify -d '	If true, the server\'s certificate will not be checked for validity'
complete -c kubectl-annotate -l kubeconfig -d '	Path to the kubeconfig file to use for CLI requests'
complete -c kubectl-annotate -l log-backtrace-at -d '	when logging hits line file:N, emit a stack trace'
complete -c kubectl-annotate -l log-cadvisor-usage -d '	Whether to log the usage of the cAdvisor container'
complete -c kubectl-annotate -l log-dir -d '	If non-empty, write log files in this directory'
complete -c kubectl-annotate -l log-file -d '	If non-empty, use this log file'
complete -c kubectl-annotate -l log-file-max-size -d '	Defines the maximum size a log file can grow to.  Unit is megabytes'
complete -c kubectl-annotate -l log-flush-frequency -d '	Maximum number of seconds between log flushes'
complete -c kubectl-annotate -l logtostderr -d '	log to standard error instead of files'
complete -c kubectl-annotate -l machine-id-file -d '	Comma-separated list of files to check for machine-id'
complete -c kubectl-annotate -l match-server-version -d '	Require server version to match client version'
complete -c kubectl-annotate -s n -l namespace -d '	If present, the namespace scope for this CLI request'
complete -c kubectl-annotate -l one-output -d '	If true, only write logs to their native severity level (vs also writing to …'
complete -c kubectl-annotate -l password -d '	Password for basic authentication to the API server'
complete -c kubectl-annotate -l profile -d '	Name of profile to capture'
complete -c kubectl-annotate -l profile-output -d '	Name of the file to write the profile to'
complete -c kubectl-annotate -l referenced-reset-interval -d '	Reset interval for referenced bytes (container_referenced_bytes metric), num…'
complete -c kubectl-annotate -l request-timeout -d '	The length of time to wait before giving up on a single server request'
complete -c kubectl-annotate -s s -l server -d '	The address and port of the Kubernetes API server'
complete -c kubectl-annotate -l skip-headers -d '	If true, avoid header prefixes in the log messages'
complete -c kubectl-annotate -l skip-log-headers -d '	If true, avoid headers when opening log files'
complete -c kubectl-annotate -l stderrthreshold -d '	logs at or above this threshold go to stderr'
complete -c kubectl-annotate -l storage-driver-buffer-duration -d '	Writes in the storage driver will be buffered for this duration, and committ…'
complete -c kubectl-annotate -l storage-driver-db -d '	database name'
complete -c kubectl-annotate -l storage-driver-host -d '	database host:port'
complete -c kubectl-annotate -l storage-driver-password -d '	database password'
complete -c kubectl-annotate -l storage-driver-secure -d '	use secure connection with database'
complete -c kubectl-annotate -l storage-driver-table -d '	table name'
complete -c kubectl-annotate -l storage-driver-user -d '	database username'
complete -c kubectl-annotate -l tls-server-name -d '	Server name to use for server certificate validation'
complete -c kubectl-annotate -l token -d '	Bearer token for authentication to the API server'
complete -c kubectl-annotate -l update-machine-info-interval -d '	Interval between machine info updates'
complete -c kubectl-annotate -l user -d '	The name of the kubeconfig user to use'
complete -c kubectl-annotate -l username -d '	Username for basic authentication to the API server'
complete -c kubectl-annotate -s v -l v -d '	number for the log level verbosity'
complete -c kubectl-annotate -l version -d '	Print version information and quit'
complete -c kubectl-annotate -l vmodule -d '	comma-separated list of pattern=N settings for file-filtered logging'
complete -c kubectl-annotate -l warnings-as-errors -d '	Treat warnings received from the server as errors and exit with a non-zero e…'

