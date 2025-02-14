# add Google Cloud SDK to PATH
if test -f ~/google-cloud-sdk/path.fish.inc
    source ~/google-cloud-sdk/path.fish.inc
end

# add brew to PATH
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# pnpm
set -gx PNPM_HOME "/home/user/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end

# Add excecutables from user
set PATH ~/.local/bin $PATH
