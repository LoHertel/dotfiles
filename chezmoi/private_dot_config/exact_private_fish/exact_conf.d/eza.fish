# show icons in terminal, but not in redirected output
set -x EZA_ICONS_AUTO auto

set -x EZA_GRID_ROWS 10

function la --wraps eza --description 'list directories and all files'
    eza -aanZF --git --smart-group --group-directories-first $argv
end

function ld --wraps eza --description 'lists only directories (no files)'
    eza -nDF --smart-group --show-symlinks --git-repos $argv
end

function ldl --wraps eza --description 'detailed list with directories (no files)'
    eza -lnDF --smart-group --show-symlinks --git-repos $argv
end

function ldla --wraps eza --description 'detailed list with all directories (no files)'
    eza -lanDF --smart-group --show-symlinks --git-repos $argv
end

function lf --wraps eza --description 'lists only files (no directories)'
    eza -nfF --smart-group --show-symlinks --git $argv
end

function lfl --wraps eza --description 'detailed list with files (no directories)'
    eza -lnfF --smart-group --show-symlinks --git $argv
end

function lfla --wraps eza --description 'detailed list with all files (no directories)'
    eza -lanfF --smart-group --show-symlinks --git $argv
end

function ll --wraps eza --description 'lists everything with directories first'
    eza -laanZF --git --smart-group --group-directories-first $argv
end

function ls --wraps eza --description 'list directories and files'
    eza -nZF --git --smart-group --group-directories-first $argv
end

function lt --wraps eza --description 'shows tree view, add integer as first argument for depth from 1 to 5'
    # default depth is 2 levels
    set -f depth 2
    # if first argument is an integer from 1 to 5, set depth to that value
    if test (count $argv) -gt 0
        if string match -qra '^[1-5]+$' -- $argv[1]
            set -f depth "$argv[1]"
            set -e argv[1]
        end
    end
    eza -anZF --tree --level=$depth $argv
end

abbr --add ltl lt -l