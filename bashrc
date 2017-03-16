export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export EDITOR="vim"
export HISTCONTROL=ignoredups:ignorespace
export PATH="$PATH:/home/alan/go/bin"
export GOPATH="/home/alan/go"
source ~/bin/_vpn-bash_completion.sh
source /home/alan/git/bashton-my-aws/functions # bashton-my-aws

alias tf="terraform"
alias mulmon="xrandr --output eDP1 --mode 3200x1800 --output DP1 --mode 3840x2160 --right-of eDP1"
alias dismulmon="xrandr --output eDP1 --mode 3200x1800 --output DP1 --off"
alias suspend="xscreensaver-command -lock && sleep 1 && sudo systemctl suspend"
alias key="ssh-add ~/.ssh/id_ed25519"
alias key1="ssh-add ~/.ssh/id_rsa"
alias sleep="i3lock && sudo systemctl suspend"
alias snowtick="~/git/bashton-servicenow/view-ticket.py"
alias snowrep="~/git/bashton-servicenow/view-ticket.py"

alias jctlw="sudo journalctl -u wpa_supplicant@wlp58s0"
alias rewifi="sudo systemctl restart wpa_supplicant@wlp58s0"
