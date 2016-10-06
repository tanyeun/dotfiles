alias c='clear'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias c++='clang++ -std=c++11 -stdlib=libc++'
alias set='source ~/.bashrc'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES;
                 killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO;
                 killall Finder /System/Library/CoreServices/Finder.app'

alias medit='/Applications/TextEdit.app/Contents/MacOS/TextEdit'

#folders
alias cleet='cd ~/Program/interview/leetcode/cpp'
alias jleet='cd ~/Program/interview/leetcode/java'
alias aa='cd ~/Program/web/interaction'

if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi

find_git_branch() {
  # Based on: http://stackoverflow.com/a/13003854/170413
  local branch
  if branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null); then
    if [[ "$branch" == "HEAD" ]]; then
	  branch='detached*'
	fi
	git_branch="( $branch )"
  else
	git_branch=""
  fi
}

PROMPT_COMMAND="find_git_branch; $PROMPT_COMMAND"

export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad
#export PS1="\\e[1;32m\]\W\$"
export PS1=" \[\033[1;32m\]\w \[\033[33m\]\$git_branch\n\[\033[1;97m\]\$ \[\033[0m\]"
export GOPATH=~/Program/gocode

PATH=$PATH:/usr/local/mysql/bin
PATH=$GOPATH/bin:$PATH
