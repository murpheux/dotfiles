#			                   #
#			                   #
#  mmmmm  m   m   m mm  mmmm   # mm    mmm   m   m  m   m 
#  # # #  #   #   #"  " #" "#  #"  #  #"  #  #   #   #m#  
#  # # #  #   #   #     #   #  #   #  #""""  #   #   m#m  
#  # # #  "mm"#   #     ##m#"  #   #  "#mm"  "mm"#  m" "m 
#                       #                                 
#                       "                                 
#  Clement Onawole
#  ln/murpheux fb/murpheux tw/murpheux


# my list of aliases

# MSDOS map
alias dir='ls -l'
alias cls='clear'

alias lf="ls -l | egrep -v '^d'"
alias ldir="ls -l | egrep '^d'"

# Aliases
alias df='df -h'
alias du='du -h'
alias grep='grep --colour=auto'
alias h='history'
alias home='cd ~'
alias j='jobs -l'

alias sysinfo='system_profiler SPHardwareDataType'

# Wine
alias npp="wine .wine/drive_c/Program\ Files/Notepad++/notepad++.exe"
alias winscp="wine .wine/drive_c/Program\ Files/WinSCP/WinSCP.exe"
alias path='echo -e ${PATH//:/\n}'

#Sublime Text
alias sublime="open -a 'sublime text'"

# Google Cloud Platform
alias dk=docker
alias dm=docker-machine
alias gc=gcloud
alias gt=gsutil
#alias kb=kubectl
alias kb='microk8s.kubectl'
alias vlt=vault
alias mkb=minikube
alias dcp=docker-compose
alias hk=heroku
alias asb='ansible -e ansible_python_interpreter=/usr/bin/python3'
alias hd=hadoop #/usr/local/Cellar/hadoop/2.8.2/bin/hadoop
alias vg=vagrant
alias lorem=/home/murpheux/Applications/lorem
alias gcn=gunicorn
alias gcn3=gunicorn3
alias dcomp=docker-compose
alias ptest='python3 -m pytest'

#alias whatismyip='dig +short myip.opendns.com @resolver1.opendns.com'
alias whatismyip='wget -qO- http://ipecho.net/plain | xargs echo'
alias whatismyipv6="host myip.opendns.com resolver1.opendns.com | grep 'myip.opendns.com has' | awk '{print \$5}'"
alias vm='vboxmanage'

alias node_repl=/home/murpheux/Applications/repl.js
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

alias vlt=vault
alias x="exit"
alias sz="source ~/.zshrc"
alias hc="history -c"

alias glt='sudo gluster'
alias gfs='sudo gluster'
alias pm='sudo podman'
alias bd='sudo buildah'
alias crictl='sudo crictl'
alias sudo='sudo '
alias speed='speedtest-cli --server 4637 --simple'
#alias python=python3

#alias pbcopy='xclip -selection clipboard'
#alias pbpaste='xclip -selection clipboard -o'
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

alias kb='kubectl --kubeconfig=/home/murpheux/.kube/k8s-1-18-8-do-1-sfo2-1602808957989-kubeconfig.yaml'
alias helm='helm --kubeconfig=/home/murpheux/.kube/k8s-1-18-8-do-1-sfo2-1602808957989-kubeconfig.yaml'

alias kafkabrk=$KAFKA_BIN/'kafka-broker-api-versions.sh --bootstrap-server sclet:9092'
alias kafkatp=$KAFKA_BIN/'kafka-topics.sh --bootstrap-server sclet:9092'
alias kafkacon=$KAFKA_BIN/'kafka-console-consumer.sh --bootstrap-server sclet:9092'
alias kafkapro=$KAFKA_BIN/'kafka-console-producer.sh --bootstrap-server sclet:9092'
alias kafkacfg=$KAFKA_BIN/'kafka-config.sh --bootstrap-server sclet:9092'

alias au='sudo apt update -y && sudo apt upgrade -y'
alias reboot='sudo reboot'
alias untar='tar -zxvf '
alias wget='wget -c '
#alias ping='ping -c 10'
alias ydl=youtube-dl
alias lnd=linode-cli

alias print256color='curl -s https://gist.githubusercontent.com/HaleTom/89ffe32783f89f403bba96bd7bcd1263/raw/ | bash'

# youtube-dl extract
alias yta-aac='youtube-dl –extract-audio –audio-format aac '
alias yta-best='youtube-dl –extract-audio –audio-format best '
alias yta-flac='youtube-dl –extract-audio –audio-format flac '
alias yta-m4a='youtube-dl –extract-audio –audio-format m4a '
alias yta-mp3='youtube-dl –extract-audio –audio-format mp3 '
alias yta-opus='youtube-dl –extract-audio –audio-format opus '
alias yta-vorbis='youtube-dl –extract-audio –audio-format vorbis '
alias yta-wav='youtube-dl –extract-audio –audio-format wav '
alias ytv-best='youtube-dl -f bestvideo+bestaudio '

alias update='sudo pacman -Syu'
alias upall='yay -Syu -noconfirm'

alias icat="kitty +kitten icat"
