# amidi
# Autogenerated from man page /usr/lib/jvm/default/man/man1/amidi.1.gz
complete -c amidi -s h -l help -d 'Help: prints a list of options'
complete -c amidi -s V -l version -d 'Prints the current version'
complete -c amidi -s l -l list-devices -d 'Prints a list of all hardware MIDI ports'
complete -c amidi -s L -l list-rawmidis -d 'Prints all RawMIDI definitions.  (used when debugging configuration files)'
complete -c amidi -s p -l port -d 'Sets the name of the ALSA RawMIDI port to use'
complete -c amidi -s s -l send -d 'Sends the contents of the specified file to the MIDI port'
complete -c amidi -s r -l receive -d 'Writes data received from the MIDI port into the specified file'
complete -c amidi -s S -l send-hex -d 'Sends the bytes specified as hexadecimal numbers to the MIDI port'
complete -c amidi -s d -l dump -d 'Prints data received from the MIDI port as hexadecimal bytes'
complete -c amidi -s t -l timeout -d 'Stops receiving data when no data has been received for the specified amount …'
complete -c amidi -s a -l active-sensing -d 'Does not ignore Active Sensing bytes (FEh) when saving or printing received M…'
complete -c amidi -s c -l clock -d 'Does not ignore Clock bytes (F8h) when saving or printing received MIDI comma…'
complete -c amidi -s i -l sysex-interval -d 'Adds a delay in between each SysEx message sent to a device'

