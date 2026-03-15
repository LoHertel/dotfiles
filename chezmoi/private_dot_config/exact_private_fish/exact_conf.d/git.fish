function get_default_branch
	if git branch | grep -q '^. main\s*$'
		echo main
	else
		echo master
    end
end

# branch
abbr --add gb git branch
abbr --add gbv git branch -vv

# checkout
abbr --add gco git checkout
abbr --add gcb git checkout -b

# clone
abbr --add gc git clone

# config
abbr --add gcd git config get --show-scope --show-origin --all

# fetch
abbr --add gf git fetch --all --prune

# log
abbr --add gl git log --graph --pretty=oneline --abbrev-commit
abbr --add gls git log --graph --pretty=oneline --abbrev-commit --stat
abbr --add gnew git log HEAD@{1}..HEAD@{0} # Show commits since last pull, see http://blogs.atlassian.com/2014/10/advanced-git-aliases/

# pull
abbr --add gpl git pull

# push
abbr --add gpu git push
abbr --add gpf git push --force-with-lease --force-if-includes

# stash
abbr --add gst git stash

# status
abbr --add gs git status
abbr --add gss git status -s

# worktree
abbr --add gwa git worktree add --guess-remote
abbr --add gwl git worktree list
abbr --add gwr git worktree remove
