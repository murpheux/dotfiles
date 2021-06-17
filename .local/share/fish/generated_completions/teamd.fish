# teamd
# Autogenerated from man page /usr/lib/jvm/default/man/man8/teamd.8.gz
complete -c teamd -s h -l help -d 'Print help text to console and exit'
complete -c teamd -s V -l version -d 'Print version information to console and exit'
complete -c teamd -s d -l daemonize -d 'Daemonize after startup'
complete -c teamd -s k -l kill -d 'Kill running daemon instance'
complete -c teamd -s e -l check -d 'Return 0 if a daemon is already running'
complete -c teamd -s f -l config-file -d 'Load the specified configuration file'
complete -c teamd -s c -l config -d 'Use given JSON format configuration string'
complete -c teamd -s p -l pid-file -d 'Use the specified PID file'
complete -c teamd -s g -l debug -d 'Turns on debugging messages.  Repeating the option increases verbosity'
complete -c teamd -s l -l log-output -d 'Force teamd log output to stdout, stderr or syslog'
complete -c teamd -s r -l force-recreate -d 'Force team device recreation in case it already exists'
complete -c teamd -s o -l take-over -d 'Take over the device if it already exists'
complete -c teamd -s N -l no-quit-destroy -d 'This option also ensures that the team device is not removed after teamd fini…'
complete -c teamd -s t -l team-dev -d 'Use the specified team device name (overrides "device" key in the configurati…'
complete -c teamd -s n -l no-ports -d 'Start without ports, even if they are listed in the configuration'
complete -c teamd -s D -l dbus-enable -d 'Enable D-Bus interface'
complete -c teamd -s Z -l zmq-enable -d 'Enable ZMQ interface'
complete -c teamd -s U -l usock-enable -d 'Enable UNIX domain socket interface.  This is enabled by default'
complete -c teamd -s u -l usock-disable -d 'Disable UNIX domain socket interface.  SEE ALSO teamdctl (8), teamd'

