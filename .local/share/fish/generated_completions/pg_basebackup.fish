# pg_basebackup
# Autogenerated from man page /usr/lib/jvm/default/man/man1/pg_basebackup.1.gz
complete -c pg_basebackup -s D -d 'Sets the target directory to write the output to'
complete -c pg_basebackup -o 'R
.br
--write-recovery-conf' -d 'Creates a standby'
complete -c pg_basebackup -s T -d 'Relocates the tablespace in directory olddir to newdir during the backup'
complete -c pg_basebackup -l waldir -d 'Sets the directory to write WAL (write-ahead log) files to'
complete -c pg_basebackup -o 'z
.br
--gzip' -d 'Enables gzip compression of tar file output, with the default compression lev…'
complete -c pg_basebackup -s Z -d 'Enables gzip compression of tar file output, and specifies the compression le…'
complete -c pg_basebackup -s c -d 'Sets checkpoint mode to fast (immediate) or spread (the default) (see Section…'
complete -c pg_basebackup -o 'C
.br
--create-slot' -d 'Specifies that the replication slot named by the --slot option should be crea…'
complete -c pg_basebackup -s l -d 'Sets the label for the backup'
complete -c pg_basebackup -o 'n
.br
--no-clean' -d 'By default, when pg_basebackup aborts with an error, it removes any directori…'
complete -c pg_basebackup -o 'N
.br
--no-sync' -d 'By default, pg_basebackup will wait for all files to be written safely to disk'
complete -c pg_basebackup -o 'P
.br
--progress' -d 'Enables progress reporting'
complete -c pg_basebackup -s r -d 'Sets the maximum transfer rate at which data is collected from the source ser…'
complete -c pg_basebackup -s S -d 'This option can only be used together with -X stream'
complete -c pg_basebackup -o 'v
.br
--verbose' -d 'Enables verbose mode'
complete -c pg_basebackup -l manifest-checksums -d 'Specifies the checksum algorithm that should be applied to each file included…'
complete -c pg_basebackup -l manifest-force-encode -d 'Forces all filenames in the backup manifest to be hex-encoded'
complete -c pg_basebackup -l no-estimate-size -d 'Prevents the server from estimating the total amount of backup data that will…'
complete -c pg_basebackup -l no-manifest -d 'Disables generation of a backup manifest'
complete -c pg_basebackup -l no-slot -d 'Prevents the creation of a temporary replication slot for the backup'
complete -c pg_basebackup -l no-verify-checksums -d 'Disables verification of checksums, if they are enabled on the server the bas…'
complete -c pg_basebackup -s d -d 'Specifies parameters used to connect to the server, as a connection string; t…'
complete -c pg_basebackup -s h -d 'Specifies the host name of the machine on which the server is running'
complete -c pg_basebackup -s p -d 'Specifies the TCP port or local Unix domain socket file extension on which th…'
complete -c pg_basebackup -s s -d 'Specifies the number of seconds between status packets sent back to the sourc…'
complete -c pg_basebackup -s U -d 'Specifies the user name to connect as'
complete -c pg_basebackup -o 'w
.br
--no-password' -d 'Prevents issuing a password prompt'
complete -c pg_basebackup -o 'W
.br
--password' -d 'Forces pg_basebackup to prompt for a password before connecting to the source…'
complete -c pg_basebackup -o 'V
.br
--version' -d 'Prints the pg_basebackup version and exits'
complete -c pg_basebackup -o '?
.br
--help' -d 'Shows help about pg_basebackup command line arguments, and exits'
complete -c pg_basebackup -s X -d 'pg_basebackup may need to wait a long time for the last WAL file required for…'
complete -c pg_basebackup -l pgdata
complete -c pg_basebackup -s F
complete -c pg_basebackup -l format
complete -c pg_basebackup -l tablespace-mapping -d 'to change that. )'
complete -c pg_basebackup -s R
complete -c pg_basebackup -l write-recovery-conf
complete -c pg_basebackup -l wal-method
complete -c pg_basebackup -s z
complete -c pg_basebackup -l gzip
complete -c pg_basebackup -l compress
complete -c pg_basebackup -l checkpoint
complete -c pg_basebackup -s C
complete -c pg_basebackup -l create-slot
complete -c pg_basebackup -l slot -d 'option should be created before starting the backup'
complete -c pg_basebackup -l label
complete -c pg_basebackup -s n
complete -c pg_basebackup -l no-clean
complete -c pg_basebackup -s N
complete -c pg_basebackup -l no-sync
complete -c pg_basebackup -s P
complete -c pg_basebackup -l progress
complete -c pg_basebackup -l max-rate
complete -c pg_basebackup -s v
complete -c pg_basebackup -l verbose
complete -c pg_basebackup -l dbname
complete -c pg_basebackup -l host
complete -c pg_basebackup -l port
complete -c pg_basebackup -l status-interval
complete -c pg_basebackup -l username
complete -c pg_basebackup -s w
complete -c pg_basebackup -l no-password
complete -c pg_basebackup -s W
complete -c pg_basebackup -l password
complete -c pg_basebackup -s V
complete -c pg_basebackup -l version
complete -c pg_basebackup -s '?'
complete -c pg_basebackup -l help

