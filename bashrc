# Easier navigation
## .., ..., ...., ....., and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias -- -="cd -"

alias cdd="cd ~/Downloads/"
alias cdg="cd ~/git/"
alias cdot="cd ~/git/dotfiles/"

# Archlinux specific aliases
alias makepkg='chrt --idle 0 ionice -c idle makepkg'

# Misc
alias awsconsole="~/git/awsconsole/awsconsole -b google-chrome-stable"
alias ewm="cd ~/git/ewmg"
alias fpm='docker run -v "$PWD":/dir -it fpm-centos-7 bash'
alias jctlw="sudo journalctl -u wpa_supplicant@wlp58s0"
alias key="ssh-add ~/git/ssh-keys/id_bashton_alan"
alias keyb="ssh-add ~/git/ssh-keys/id_bashton"
alias keycl="ssh-add -D"
alias keyp="ssh-add ~/git/ssh-keys/id_personal"
alias keypa="ssh-add ~/git/ssh-keys/id_alan-aws"
alias keypo="ssh-add ~/git/ssh-keys/id_personal_old"
alias kmse='export EYAML_CONFIG=$PWD/.kms-eyaml.yaml'
alias ll='ls --color=always'
alias ls='ls --color=always'
alias misg="cd ~/git/missguided"
alias rewifi="sudo systemctl restart wpa_supplicant@wlp58s0"
alias sdl="cd ~/git/superdry/laguna"
alias sdo="cd ~/git/superdry/osaka"
alias sdw="cd ~/git/superdry/windcheater"
alias sleep="i3lock && sudo systemctl suspend"
alias snowrep="~/git/bashton-servicenow/reports.py"
alias snowtick="~/git/bashton-servicenow/view-ticket.py --nobox"
alias suspend="xscreensaver-command -lock && sleep 1 && sudo systemctl suspend"
alias tf="terraform"
alias tw="task +work"
alias tp="task +personal"

export AWS_DEFAULT_REGION="eu-west-1"
export EDITOR="vim"
export GOPATH="/home/alan/go"
export HISTCONTROL=ignoredups:ignorespace
export PATH="$PATH:/home/alan/.gem/ruby/2.4.0/bin"
export PATH="$PATH:/home/alan/git/tfenv/bin"
export PATH="$PATH:/home/alan/go/bin"
export PATH="$PATH:/home/alan/bin"
export PATH="$PATH:/home/alan/.local/bin"
export PATH="$PATH:/home/alan/.gem/ruby/2.5.0/bin"

if [ -z "$SSH_AUTH_SOCK" ];
then
    export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
fi

SOURCE_FILES=(
    /home/alan/git/bashton-my-aws/functions
    /home/alan/git/bashton-sshuttle/sshuttle-vpn
    /home/alan/git/puppet-log-reader/bash-functions.sh
    /usr/share/bash-completion/bash_completion
    /usr/share/doc/pkgfile/command-not-found.bash
    /usr/share/git/completion/git-completion.bash
    /usr/share/git/completion/git-prompt.sh
)

for FILE in "${SOURCE_FILES[@]}";
do
    if [ -e "$FILE" ];
    then
        source "$FILE"
    fi
done

# setup git ps1 prompt
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM="auto"
PROMPT_DIRTRIM=2

PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'

# direnv
eval "$(direnv hook bash)"
