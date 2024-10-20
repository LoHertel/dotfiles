# add Google Cloud SDK to PATH
if test -f ~/google-cloud-sdk/path.fish.inc
    source ~/google-cloud-sdk/path.fish.inc
end

# add brew to PATH
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Add excecutables from user
set PATH ~/.local/bin $PATH
