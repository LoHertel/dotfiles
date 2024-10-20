# Add GPG config
# needed by gpg-agent to show the passphrase input prompt in the correct shell
# e.g. when signing git commits with a GPG key
set -x GPG_TTY (tty)

if status is-login
    # Commands to run on login
end

if status is-interactive
    # Commands to run in interactive sessions can go here

    # fzf
    fzf --fish | source

    # zoxide
    # sets "y" for zoxide
    zoxide init --cmd y fish | source

    # activate direnv hooks
    #direnv hook fish | source

    # pyenv
    #pyenv init - | source

    # sets kubeswitch custom function
    switcher init fish | source
    # sets alias for kubeswitch
    function s --wraps switcher
        kubeswitch $argv;
    end

    # kubectl code completion
    kubectl completion fish | source
end
