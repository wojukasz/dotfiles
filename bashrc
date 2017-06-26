alias awsconsole="~/git/awsconsole/awsconsole -b google-chrome-stable"
alias cdg="cd ~/git/"
alias cdot="cd ~/git/dotfiles/"
alias fpm='docker run -v "$PWD":/dir -it fpm-centos-7 bash'
alias jctlw="sudo journalctl -u wpa_supplicant@wlp58s0"
alias key="ssh-add ~/.ssh/id_bashton_alan"
alias keyb="ssh-add ~/.ssh/id_bashton"
alias keycl="ssh-add -D"
alias keyp="ssh-add ~/.ssh/id_personal"
alias keypa="ssh-add ~/.ssh/id_alan-aws"
alias keypo="ssh-add ~/.ssh/id_personal_old"
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

export EDITOR="vim"
export GOPATH="/home/alan/go"
export HISTCONTROL=ignoredups:ignorespace
export PATH="$PATH:/home/alan/.gem/ruby/2.4.0/bin"
export PATH="$PATH:/home/alan/git/tfenv/bin"
export PATH="$PATH:/home/alan/go/bin"
export PATH="$PATH:/home/alan/bin"

if [ -z "$SSH_AUTH_SOCK" ];
then
    export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
fi

function sdftpssh()
{
    ENVNAME=$1
    ssh `instances | instance-tags | grep ftp | grep $1 | instance-ip | awk '{ print $2; }'`
}

SOURCE_FILES=(
    /home/alan/git/bashton-my-aws/functions
    /home/alan/git/bashton-sshuttle/sshuttle-vpn
    /usr/share/git/completion/git-completion.bash
)

for FILE in "${SOURCE_FILES[@]}";
do
    if [ -e "$FILE" ];
    then
        source "$FILE"
    fi
done
