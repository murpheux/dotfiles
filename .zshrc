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

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export TERM="xterm-256color"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/murpheux/.oh-my-zsh"

PS1_EMOJIS=("😀" "😃" "😄" "😁" "😆" "😅" "🤣" "😂" "🙂" "🙃" "😉" "😊" "😇" "😍" "😘" "😗" "😚" "😙" "😋" "😛" "😜" "😝" "    🤑" "🤗" "🤔" "🤐" "😐" "😑" "😶" "😏" "😒" "🙄" "😬" "🤥" "😌" "😔" "😪" "🤤" "😴" "😷" "🤒" "🤕" "🤢" "🤧" "😵" "🤠" "😎"     "🤓" "😕" "😟" "🙁" "😮" "😯" "😲" "😳" "😦" "😧" "😨" "😰" "😥" "😢" "😭" "😱" "😖" "😣" "😞" "😓" "😩" "😫" "😤" "😡" ">    😠" "😈" "👿" "💀" "💩" "🤡" "👹" "👺" "👻" "👽" "🤖" "😺" "😸" "😹" "😻" "😼" "😽" "🙀" "😿" "😾" "🙈" "🙉" "🙊" "💋" "💌"     "💘" "💝" "💖" "💗" "💓" "💞" "💕" "💟" "💔" "💛" "💚" "💙" "💜" "💥" "💫" "💦" "💨" "💬" "💭" "💤" "👋" "🤚" "✋" "🖖" ">    👌" "🤞" "🤘" "🤙" "👈" "👉" "👆" "🖕" "👇" "👍" "👎" "✊" "👊" "🤛" "🤜" "👏" "🙌" "👐" "🤝" "🙏" "💅" "🤳" "💪" "👂" "👀"     "👅" "👄" "👶" "👦" "👧" "👱" "👨" "👱" "👨" "👨" "👨" "👨" "👩" "👱" "👩" "👩" "👩" "👩" "👴" "👵" "🙇" "🙇" "🤦" "🤦" ">    🤦" "🤷" "🤷" "🤷" "👨" "👩" "👨" "👩" "👨" "👩" "👨" "👩" "👨" "👩" "👨" "👩" "👨" "👩" "👨" "👩" "👨" "👩" "👨" "👩" "👩"     "🏃" "🏃" "💃" "🕺" "👯" "👯" "👯" "🤺" "🏇" "🚣" "🚣" "🚣" "🏊" "🏊" "🏊" "🚴" "🚴" "🚴" "🚵" "🚵" "🚵" "🤸" "🤸" "🤸" ">    🤼" "🤼" "🤼" "🤽" "🤽" "🤽" "🤾" "🤾" "🤾" "🤹" "🤹" "🤹" "🛀" "🛌" "👫" "👬" "💏" "👩" "👨" "👩" "💑" "👩" "👨" "👩" "👪"     "👨" "👨" "👨" "👨" "👨" "👨" "👨" "👨" "👨" "👨" "👩" "👩" "👩" "👩" "👩" "👨" "👨" "👨" "👨" "👨" "👩" "👩" "👩" "👩" ">    👩" "🐵" "🐒" "🦍" "🐕" "🐺" "🦊" "🐱" "🐈" "🦁" "🐯" "🐅" "🐆" "🐴" "🐎" "🦄" "🦌" "🐮" "🐂" "🐄" "🐷" "🐖" "🐗" "🐽" "🐏"     "🐑" "🐐" "🐪" "🐫" "🐘" "🦏" "🐭" "🐁" "🐀" "🐹" "🐰" "🐇" "🐻" "🐨" "🐼" "🦃" "🐔" "🐓" "🐣" "🐤" "🐥" "🐦" "🐧" "🦅" ">    🦆" "🦉" "🐸" "🐊" "🐢" "🦎" "🐍" "🐲" "🐉" "🐳" "🐋" "🐬" "🐟" "🐠" "🐡" "🦈" "🐙" "🐚" "🐌" "🦋" "🐛" "🐝" "🐞" "💐" "🌸"     "🌹" "🥀" "🌺" "🌻" "🌼" "🌷" "🍇" "🍈" "🍉" "🍊" "🍋" "🍌" "🍍" "🍎" "🍏" "🍐" "🍑" "🍒" "🍓" "🥝" "🍅" "🥑" "🍆" "🥔" ">    🥕" "🌽" "🥒" "🥜" "🌰" "🍞" "🥐" "🥖" "🥞" "🍖" "🍗" "🥓" "🍔" "🍟" "🍕" "🌭" "🌮" "🌯" "🥙" "🍳" "🥘" "🍲" "🥗" "🍿" "🍱"     "🍘" "🍙" "🍚" "🍛" "🍜" "🍝" "🍠" "🍢" "🍣" "🍤" "🍥" "🍡" "🦀" "🦐" "🦑" "🍦" "🍧" "🍨" "🍩" "🍪" "🎂" "🍰" "🍫" "🍬" ">    🍭" "🍮" "🍯" "🍼" "🥛" "☕" "🍵" "🍶" "🍾" "🍷" "🍸" "🍹" "🍺" "🍻" "🥂" "🥃" "🌍" "🌎" "🌏" "🗾" "🌋" "🗻" "⛺" "🌁" "🌃"     "🌄" "🌅" "🌆" "🌇" "🌉" "🎠" "🎡" "🎢" "💈" "🎪" "🚂" "🚃" "🚄" "🚅" "🚆" "🚇" "🚈" "🚉" "🚊" "🚝" "🚞" "🚋" "🚌" "🚍" ">    🚎" "🚐" "🚑" "🚒" "🚓" "🚔" "🚕" "🚖" "🚗" "🚘" "🚙" "🚚" "🚛" "🚜" "🛵" "🚏" "⛽" "🚨" "🚥" "🚦" "🛑" "🚧" "⚓" "⛵" "🛶"     "🚤" "🚢" "🛫" "🛬" "🚁" "🚟" "🚠" "🚡" "🚀" "⌛" "⏳" "⌚" "⏰" "🕛" "🕧" "🕐" "🕜" "🕑" "🕝" "🕒" "🕞" "🕓" "🕟" "🕔" ">    🕠" "🕕" "🕡" "🕖" "🕢" "🕗" "🕣" "🕘" "🕤" "🕙" "🕥" "🕚" "🕦" "🌑" "🌒" "🌓" "🌔" "🌕" "🌖" "🌗" "🌘" "🌙" "🌚" "🌛" "🌜"     "🌝" "🌞" "🌟" "🌠" "🌌" "🌀" "🌈" "🌂" "☔" "⚡" "🎃" "🎄" "🎆" "🎇" "✨" "🎈" "🎉" "🎊" "🎋" "🎍" "🎎" "🎏" "🎐" "🎑" ">    🎀" "🎁" "🏆" "🏅" "🥇" "🥈" "🥉" "⚽" "⚾" "🏀" "🏐" "🏈" "🏉" "🎾" "🎳" "🏏" "🏑" "🏒" "🏓" "🏸" "🥊" "🥋" "🥅" "⛳" "🎣"     "🎿" "🎯" "🔮" "🎮" "🎰" "🎲" "👓" "👖" "👝" "🎒" "👠" "👡" "👑" "👒" "🎩" "🎓" "📿" "💄" "💍" "💎" "🔈" "🔉" "🔊" "📢" ">    📣" "📯" "🔔" "🔕" "📻" "🎷" "🎸" "🎹" "🎺" "🎻" "📱" "📲" "📞" "📟" "📠" "🔋" "🔌" "💻" "💽" "💾" "💿" "📀" "🎥" "🎬" "📺"     "📷" "📸" "📹" "📼" "🔍" "🔎" "💡" "🔦" "🏮" "📔" "📕" "📖" "📗" "📘" "📙" "📚" "💰" "💸" "🔨" "🔫" "🏹" "🔧" "🔩" "🔬" ">    🔭" "📡" "🚪" "🚿" "🛁" "🛒")
NUMBER_OF_EMOJIS=${#PS1_EMOJIS[@]}
THEME_DELIMITER="%{$fg_bold[blue]%}›%{$reset_color%}%{$fg_bold[red]%}›%{$reset_color%}%{$fg_bold[green]%}›%{$reset_color%}"

# ----------------------------------
# Colors
# ----------------------------------
NOCOLOR='[0m'
RED='[0;31m'
GREEN='[0;32m'
ORANGE='[0;33m'
BLUE='[0;34m'
PURPLE='[0;35m'
CYAN='[0;36m'
LIGHTGRAY='[0;37m'
DARKGRAY='[1;30m'
LIGHTRED='[1;31m'
LIGHTGREEN='[1;32m'
YELLOW='[1;33m'
LIGHTBLUE='[1;34m'
LIGHTPURPLE='[1;35m'
LIGHTCYAN='[1;36m'
WHITE='[1;37m'

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
#ZSH_THEME="spaceship"
#ZSH_THEME="agnoster"

ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL10K_RIGHT_PROMPT_ELEMENTS=(history)
POWERLEVEL10K_SHORTEN_DIR_LENGTH=1
POWERLEVEL10K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)
POWERLEVEL10K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)
POWERLEVEL10K_VCS_MODIFIED_BACKGROUND='red'

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  docker
  brew
  python
  vscode
  osx
  npm
  yarn
  zsh-syntax-highlighting
  zsh-autosuggestions
)

#source /root/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-syntax-highlighting.zsh
#source /root/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Android Home
export ANDROID_HOME=/home/murpheux/Library/Android/sdk
export MEDUSA_HOME=/home/murpheux/Workspace/Project/Medusa
# Finished

export PATH=$ANDROID_HOME/platform-tools:$PATH

# GO
export GO_HOME=/usr/local/go
export GOPATH=$HOME/go
export PATH=$HADOOP_HOME/bin:$GO_HOME/bin:$PATH

# import aliases
source ~/.config/aliases.sh

# Set Spaceship ZSH as a prompt
#autoload -Uz promptinit; promptinit
#prompt spaceship

# LDAP CONFIG
export LDAP_ORGANISATION=sld
export LDAP_DOMAIN=sld.com
export LDAP_ADMIN_PASSWORD=admin

# SQL SERVER CONFIG
export MSSQL_SA_PASSWORD=Il0v35ql!
export MSSQL_DB=sldApi
export MSSQL_USER=sld_user
export MSSQL_PASSWORD=Il0v35ql!
export MSSQL_JOBMANAGER_DB=sldJobManager
export VAULT_ADDR=http://172.16.238.8:8200
export VAULT_TOKEN=s.gB9Lx9WNVpvB3Cq8tT7DNeq3

# jenkins
export JK_TOKEN=113426983fbccc004ba606e4d4f30001ee

export VSH_VERSION=0.1.4
export SSHD_CONFIG_PATH=/etc/ssh/sshd_config
export PAMD_CONFIG_PATH=/etc/pam.d/sshd
export GOPATH=$HOME/work
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

source <(kubectl completion zsh)
complete -F __start_kubectl kb

random-string()
{
    cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w ${1:-32} | head -n 1
}

#export DOCKER_HOST=scarlet
export SMTP_PW=cG9ienhxaWZhcHpremZnZgo=
export SENDGRID_API_KEY=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
 
# jenkins
export JK_TOKEN=112dd150b485d20223fb0ef6f16bcd17fc
 
export PATH="/usr/local/opt/curl/bin:$PATH"
# export DGIINI_VERSION=246
# export DGIINI_VERSION=$(curl --user murpheux:$JK_TOKEN http://gru:8080/job/dgiini-scarlet_dk/lastBuild/buildNumber)
export DGIINI_HOME=~/Workspace/Projects/dgiini

#export TF_VAR_do_token=$(cat ~/cred/docean/access_token)

# AUTH0
export CLIENT_ID=MPAic7TfErCVtH2F4JQaqCQl5wYWjWA4
export CLIENT_SECRET=UZOBaLlWzshLu7AXRcHRCCHgpFD2I2ghY8RkbKPMpqYxMBLG6kMCiOUzYysPXGou
export AUDIENCE=https://murpheux.auth0.com/api/v2/

# Google
GOOGLE_API_KEY=AIzaSyB4rkOg7uSupskMTi-2kiteuvn2KaBswZU

# Kafka cli
export KAFKA_HOME=/home/murpheux/Apps
export KAFKA_BIN=$KAFKA_HOME/kafka_2.13-2.7.0/bin
export KAFKA_HOME=/home/murpheux/Apps

#PATH="$HOME/.cargo/bin:$PATH"
#source $HOME/.cargo/env
# setterm -linewrap off

kitty + complete setup zsh | source /dev/stdin

#linux_distros=('popos' 'ubuntu' 'fedora' 'arch' 'majaro' 'linuxmint' 'opensuse' 'garuda' 'debian' 'parrot' 'kali' 'alpine' 'android' 'centos' 'gentoo' 'macos' 'raspbian' 'redhat' 'elementary' 'reborn' 'zorin' 'solus' 'slackware' 'freebsd' 'mx' 'puppy' 'sparky' 'peppermint')
#RANDOM=$$$(date +%s)
#selected_os=${linux_distros[$RANDOM % ${#linux_distros[@]}]}
#neofetch --ascii_distro $selected_os

# linux_distros=('android' 'arch' 'arco' 'artix' 'bedrock' 'centos' 'dahlia' 'debian' 'dragonfly' 'elementary' 'endeavour' 'fedora' 'freebsd' 'gentoo' 'gnu' 'guix' 'haiku' 'hyperbola' 'instantos' 'irix' 'kdeneon' 'lite' 'mint' 'linux' 'macos' 'mageia' 'manjaro' 'minimix' 'mx' 'netbsd' 'nixos' 'openbsd' 'opensusetumbleweed' 'opensuse' 'openwrt' 'parabola' 'pop!_os' 'pureos' 'raspbian' 'solaris' 'ubuntu' 'void')
# RANDOM=$$$(date +%s)
# selected_os=${linux_distros[$RANDOM % ${#linux_distros[@]}]}
# export PF_ASCII=$selected_os
# pfetch
# colorscript random
# echo ">>>>>>>> $(fortune) <<<<<<<<"

PATH="/home/linuxbrew/.linuxbrew/bin:/home/murpheux/.npm-global/bin:$PATH"
PATH="/snap/bin:$PATH"
PATH="/home/murpheux/.local/bin:$PATH"
PATH=$PATH:$HOME/.SpaceVim/bin

# zsh history
export HISTCONTROL=ignoreboth:erasedups
export HISTFILESIZE=100000
export HISTSIZE=100000
export HISTORY_IGNORE="(ls|ll|pwd|clear|dig *|rm *|cls|h|pwd|rm -rf *|paru|paru -Syy|paru -Syu|paru -Syyu|cd *:sz)"
#export HISTTIMEFORMAT="[%F %T] "
#setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
#bash
#export HISTIGNORE='ls *:ll *:pwd:clear:dig *:rm *:cls:h:pwd:rm -rf *:ll:paru:paru -Syy:paru -Syu:paru -Syyu:cd *:sz'

export PATH="$PATH:/home/murpheux/istio-1.9.1/bin"
export PATH="${PATH}:${HOME}/.krew/bin"
export AWS_PROFILE=murpheux
export PATH=$PATH:/home/murpheux/bin:/home/murpheux/lib/apps/bin
source '/home/murpheux/lib/azure-cli/az.completion'
export EDITOR=vi
export PATH="$PATH:/home/murpheux/.dotnet/tools"
source /usr/share/nvm/init-nvm.sh

# Gmail mutt
export GMAIL_PASS=$(gpg --textmode -d ~/.cred/gmail/cred.gpg)
eval "$(bw completion --shell zsh); compdef _bw bw;"

# bitwarden
BW_VAR=$(gpg --textmode -d ~/.cred/bitwarden/apiKey.gpg)
export BW_CLIENTID=$(echo ${BW_VAR} | jq '.client_id')
export BW_CLIENTSECRET=$(echo ${BW_VAR} | jq '.client_secret')

autoload -U +X compinit && compinit -i
autoload -U +X bashcompinit && bashcompinit -i
complete -o nospace -F /usr/local/bin/aliyun aliyun

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'lfcd
'
# Run something, muting output or redirecting it to the debug stream
# depending on the value of _ARC_DEBUG.
# If ARGCOMPLETE_USE_TEMPFILES is set, use tempfiles for IPC.
__python_argcomplete_run() {
    if [[ -z "${ARGCOMPLETE_USE_TEMPFILES-}" ]]; then
        __python_argcomplete_run_inner "$@"
        return
    fi
    local tmpfile="$(mktemp)"
    _ARGCOMPLETE_STDOUT_FILENAME="$tmpfile" __python_argcomplete_run_inner "$@"
    local code=$?
    cat "$tmpfile"
    rm "$tmpfile"
    return $code
}

__python_argcomplete_run_inner() {
    if [[ -z "${_ARC_DEBUG-}" ]]; then
        "$@" 8>&1 9>&2 1>/dev/null 2>&1
    else
        "$@" 8>&1 9>&2 1>&9 2>&1
    fi
}

_python_argcomplete() {
    local IFS=$'\013'
    local SUPPRESS_SPACE=0
    if compopt +o nospace 2> /dev/null; then
        SUPPRESS_SPACE=1
    fi
    COMPREPLY=( $(IFS="$IFS" \
                  COMP_LINE="$COMP_LINE" \
                  COMP_POINT="$COMP_POINT" \
                  COMP_TYPE="$COMP_TYPE" \
                  _ARGCOMPLETE_COMP_WORDBREAKS="$COMP_WORDBREAKS" \
                  _ARGCOMPLETE=1 \
                  _ARGCOMPLETE_SUPPRESS_SPACE=$SUPPRESS_SPACE \
                  __python_argcomplete_run "$1") )
    if [[ $? != 0 ]]; then
        unset COMPREPLY
    elif [[ $SUPPRESS_SPACE == 1 ]] && [[ "${COMPREPLY-}" =~ [=/:]$ ]]; then
        compopt -o nospace
    fi
}
complete -o nospace -o default -o bashdefault -F _python_argcomplete airflow

# set wordwrap
setterm -linewrap on
