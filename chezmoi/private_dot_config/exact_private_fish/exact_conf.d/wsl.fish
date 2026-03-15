if systemd-detect-virt | string match -i -q 'wsl'

    set -g EDITOR 'code --wait'

    # use 1Password SSH Agent from Windows for passwords and SSH
    alias ssh 'ssh.exe'
    alias ssh-add 'ssh-add.exe'

end