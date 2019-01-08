# {{{ Aliases
# {{{ Easier navigation
## .., ..., ...., ....., and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias -- -="cd -"

alias cdd="cd ~/Downloads/"
alias cdg="cd ~/git/"
alias cdot="cd ~/git/dotfiles/"
alias cdgo="cd \$GOPATH"
# }}}
# {{{ Archlinux specific aliases
alias makepkg='chrt --idle 0 ionice -c idle makepkg'
# }}}
# {{{ Misc
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
alias misg="cd ~/git/missguided"
alias rewifi="sudo systemctl restart wpa_supplicant@wlp58s0"
alias sdl="cd ~/git/superdry/laguna"
alias sdo="cd ~/git/superdry/osaka"
alias sdw="cd ~/git/superdry/windcheater"
alias sdh="cd ~/git/superdry/superdry-henley"
# alias sleep="i3lock && sudo systemctl suspend"
alias snowrep="~/git/bashton-servicenow/reports.py"
alias snowtick="~/git/bashton-servicenow/view-ticket.py --nobox"
alias suspend="xscreensaver-command -lock && sleep 1 && sudo systemctl suspend"
alias tf="terraform"
alias tw="task +work"
alias tp="task +personal"

if uname -a | grep 'Darwin' &> /dev/null; then
  alias ll='ls -G';
  alias ls='ls -G';
else
  alias ll='ls --color=always';
  alias ls='ls --color=always';
fi
# }}}
# }}}
# {{{ Environment variables
export ARDUINO_PATH="/usr/share/arduino"
export AWS_DEFAULT_REGION="eu-west-1"
export EDITOR="vim"
export GOPATH="/home/alan/go"
export HISTCONTROL=ignoredups:ignorespace
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:/home/alan/.gem/ruby/2.4.0/bin"
export PATH="$PATH:/home/alan/go/bin"
export PATH="$PATH:/home/alan/bin"
export PATH="$PATH:/home/alan/.local/bin"
export PATH="$PATH:/home/alan/.gem/ruby/2.5.0/bin"

if [ -z "$SSH_AUTH_SOCK" ];
then
    export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
fi
# }}}
# {{{ Bash helper functions
if [ ! -e "$HOME/.local/share" ]; then
  mkdir -p "$HOME/.local/share"
fi

# {{{ Installations
# {{{ Asdf installation
ASDF_DIR="$HOME/.local/share/asdf"
if [ ! -e "$ASDF_DIR" ]; then
  git clone https://github.com/asdf-vm/asdf.git "$ASDF_DIR" --branch v0.5.0
fi
# }}}
# {{{ base16 installation
BASE16_SHELL="$HOME/.config/base16-shell/"
if [ ! -e "${BASE16_SHELL}" ]; then
  git clone git@github.com:chriskempson/base16-shell.git "${BASE16_SHELL}"
fi
# }}}
# }}}
# {{{ Source existing files bash helpers
SOURCE_FILES=(
    /home/alan/git/bashton-my-aws/functions
    /home/alan/git/bashton-sshuttle/sshuttle-vpn
    /home/alan/git/puppet-log-reader/bash-functions.sh
    /usr/share/bash-completion/bash_completion
    /usr/share/doc/pkgfile/command-not-found.bash
    /usr/share/git/completion/git-completion.bash
    /usr/local/git/contrib/completion/git-completion.bash
    /usr/share/git/completion/git-prompt.sh
    /usr/local/etc/bash_completion.d/git-prompt.sh
    /usr/lib/ruby/gems/2.5.0/gems/tmuxinator-0.12.0/completion/tmuxinator.bash
    "$HOME/.local/share/asdf/completions/asdf.bash"
    "$HOME/.local/share/asdf/asdf.sh"
)

for FILE in "${SOURCE_FILES[@]}";
do
    if [ -e "$FILE" ];
    then
        source "$FILE"
    fi
done
# }}}
# {{{ FASD Initialisation
if command -v fasd &>/dev/null; then
  eval "$(fasd --init auto)"
fi
# }}}
# {{{ ASDF plugin installation
ASDF_PLUGINS=(
  kops
  kubecfg
  kubectl
  ruby
  terraform
  tflint
)

for plugin in "${ASDF_PLUGINS[@]}"; do
  if [ ! -e "${ASDF_DIR}/plugins/${plugin}" ]; then
    asdf plugin-add "${plugin}"
    ASDF_LATEST=$(asdf list-all "${plugin}" | tail -n1)
    asdf install "${plugin}" "${ASDF_LATEST}"
    asdf global "${plugin}" "${ASDF_LATEST}"
    unset ASDF_LATEST
  fi
done
# }}}
# }}}
# {{{ Bash prompt config
# setup git ps1 prompt
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM="auto"
PROMPT_DIRTRIM=2

PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'

# {{{ base16 colour theme setup
[ -n "$PS1" ] && \
[ -s "$BASE16_SHELL/profile_helper.sh" ] && \
eval "$("$BASE16_SHELL/profile_helper.sh")"
# }}}
# }}}

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
