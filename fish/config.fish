set PATH $PATH "$HOME/bin"
set -x EDITOR vim
set -x SSH_ENV "$HOME/.ssh/environment"
set -x GOPATH "$HOME/git/go"

function start_agent
     echo "Initialising new SSH agent..."
     /usr/bin/ssh-agent | sed 's/^echo/#echo/' | sed 's/^/set -x /g ' | sed 's/=/ /g' | sed 's/export SSH_AUTH_SOCK;//g' | sed 's/export SSH_AGENT_PID;//g' | sed 's/;//g' > $SSH_ENV
     echo succeeded
     chmod 600 $SSH_ENV
     . $SSH_ENV > /dev/null
     /usr/bin/ssh-add;
end

# Source SSH settings, if applicable

if [ -f "$SSH_ENV" ]
     . "$SSH_ENV" > /dev/null
     #ps $SSH_AGENT_PID doesn't work under cywgin
     ps -ef | grep $SSH_AGENT_PID | grep ssh-agent > /dev/null; or start_agent;
else
     start_agent;
end

alias ls='ls --color=auto'
