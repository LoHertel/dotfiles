function sshagent
  if test -z (pgrep ssh-agent | string collect)
    eval (command ssh-agent -c)
    set -Ux SSH_AGENT_PID $SSH_AGENT_PID
    set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
  end
end
