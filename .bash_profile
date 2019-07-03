# Homestead bashrc
if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

# enable color support of ls
alias ls='ls -G'
alias grep='grep -G'
alias fgrep='fgrep -G'
alias egrep='egrep -G'

# aliases setting
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ../..'
alias h='cd ~'
alias c='clear'

# locale
export LANG=ja_JP.UTF-8

# PHP path
export PATH="/usr/local/opt/php@7.1/bin:$PATH"
export PATH="/usr/local/opt/php@7.1/sbin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# sdk setting
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# git setting
# git-completion.bash / git-prompt.sh
source $HOME/.git-completion.bash
source $HOME/.git-prompt.sh

# add、commitがされていない時に「*」「+」で表示
GIT_PS1_SHOWDIRTYSTATE=true
# addされていない新規ファイルがある時に「%」で表示
GIT_PS1_SHOWUNTRACKEDFILES=true
# stashがある場合に「$」で表示
GIT_PS1_SHOWSTASHSTATE=true
# upstreamの状態で各表示
# 同じ時「=」、進んでいる時「>」、遅れている時「<」
GIT_PS1_SHOWUPSTREAM=auto

# プロンプト表示設定
export PS1="\[\033[36m\]\u@\h\[\033[33m\] \w\033[31m\]$(__git_ps1) \n\[\033[34m\]\$\[\033[00m\] "

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.bash.inc" ]; then . "$HOME/google-cloud-sdk/path.bash.inc"; fi
# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.bash.inc" ]; then . "$HOME/google-cloud-sdk/completion.bash.inc"; fi

