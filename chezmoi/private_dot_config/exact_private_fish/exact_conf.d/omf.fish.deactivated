# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# Configure bobthefish theme
set -g theme_title_display_process yes
set -g theme_nerd_fonts yes
set -g theme_powerline_fonts yes
set -g theme_display_k8s_context yes
set -g theme_display_k8s_namespace yes

# Python virtualenv
set -x VIRTUAL_ENV_DISABLE_PROMPT 1 # don't add to prompt, because bobthefish already does it
