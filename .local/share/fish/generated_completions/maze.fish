# maze
# Autogenerated from man page /usr/lib/jvm/default/man/man6/maze.6.gz
complete -c maze -o window -d 'Draw on a newly-created window.   This is the default'
complete -c maze -o root -d 'Draw on the root window'
complete -c maze -o install -d 'Install a private colormap for the window'
complete -c maze -o visual -d 'Specify which visual to use'
complete -c maze -o grid-size -d 'The size of each block of the maze, in pixels; default is 0, meaning pick a r…'
complete -c maze -o live-color -d 'The color of the path'
complete -c maze -o dead-color -d 'The color of the failed path (it is also stippled with a 50% pattern. )'
complete -c maze -o skip-color -d 'The maze solver will choose to not go down a path if it can "see" (in a strai…'
complete -c maze -o surround-color -d 'If the maze solver ever completely encloses an area within the maze, then it …'
complete -c maze -o solve-delay -d 'Delay (in microseconds) between each step of the solution path'
complete -c maze -o pre-delay -d 'Delay (in microseconds) between generating a maze and starting to solve it'
complete -c maze -o post-delay -d 'Delay (in microseconds) after solving a maze and before generating a new one'
complete -c maze -o generator -d 'Sets the algorithm that will be used to generate the mazes'
complete -c maze -o max-length -d 'Controls the maximum length of walls drawn in one go by generator 1'
complete -c maze -o fps -d 'Display the current frame rate and CPU load'

