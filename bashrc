alias jctlw="sudo journalctl -u wpa_supplicant@wlp58s0"
alias key="ssh-add ~/.ssh/id_rsa"
alias keyb="ssh-add ~/.ssh/id_bashton"
alias keyp="ssh-add ~/.ssh/id_personal"
alias keypo="ssh-add ~/.ssh/id_personal_old"
alias rewifi="sudo systemctl restart wpa_supplicant@wlp58s0"
alias sleep="i3lock && sudo systemctl suspend"
alias snowrep="~/git/bashton-servicenow/reports.py"
alias snowtick="~/git/bashton-servicenow/view-ticket.py"
alias suspend="xscreensaver-command -lock && sleep 1 && sudo systemctl suspend"
alias tf="terraform"

alias awsconsole="~/git/awsconsole/awsconsole -b google-chrome-stable"
alias cdg="cd ~/git/"
alias cdot="cd ~/git/dotfiles/"
alias misg="cd ~/git/missguided/realgit/"
alias sdl="cd ~/git/superdry/laguna"
alias sdo="cd ~/git/superdry/osaka"

export EDITOR="vim"
export GOPATH="/home/alan/go"
export HISTCONTROL=ignoredups:ignorespace
export PATH="$PATH:/home/alan/.gem/ruby/2.4.0/bin"
export PATH="$PATH:/home/alan/git/tfenv/bin"
export PATH="$PATH:/home/alan/go/bin"
export PATH="$PATH:/home/alan/bin"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

source /home/alan/git/bashton-my-aws/functions # bashton-my-aws
source /home/alan/git/bashton-sshuttle/sshuttle-vpn # bashton-sshuttle
source /usr/share/git/completion/git-completion.bash
