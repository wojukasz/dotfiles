export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export EDITOR="vim"
export HISTCONTROL=ignoredups:ignorespace
export PATH="$PATH:/home/alan/go/bin"
export PATH="$PATH:/home/alan/git/tfenv/bin"
export PATH="$PATH:/home/alan/.gem/ruby/2.4.0/bin"
export GOPATH="/home/alan/go"
source ~/bin/_vpn-bash_completion.sh
source /home/alan/git/bashton-my-aws/functions # bashton-my-aws

alias tf="terraform"
alias suspend="xscreensaver-command -lock && sleep 1 && sudo systemctl suspend"
alias key="ssh-add ~/.ssh/id_ed25519"
alias key1="ssh-add ~/.ssh/id_rsa"
alias keyb="ssh-add ~/.ssh/id_bashton"
alias sleep="i3lock && sudo systemctl suspend"
alias snowtick="~/git/bashton-servicenow/view-ticket.py"
alias snowrep="~/git/bashton-servicenow/reports.py"

alias jctlw="sudo journalctl -u wpa_supplicant@wlp58s0"
alias rewifi="sudo systemctl restart wpa_supplicant@wlp58s0"
source /home/alan/git/bashton-sshuttle/sshuttle-vpn # bashton-sshuttle
