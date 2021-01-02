# load antigen
source $(brew --prefix)/share/antigen/antigen.zsh

#comment in for performance tracking (and also zprof at the end of the file)

zmodload zsh/zprof

SAVEHIST=10000
DEFAULT_USER="___USER___"
skip_global_compinit=1
 
# Load the oh-my-zsh's library.
antigen use oh-my-zsh

#####################################################################################################
# antigen bundles to load (for a complete list see https://github.com/unixorn/awesome-zsh-plugins )#
####################################################################################################

# git and git- extra commands
antigen bundle git
antigen bundle unixorn/git-extra-commands
antigen bundle git-extras

# bitbucket
#antigen bundle unixorn/bitbucket-git-helpers.plugin.zsh

# colored man pages
antigen bundle colored-man-pages

# alias tips
antigen bundle djui/alias-tips

# brew autocompletion
antigen bundle brew
antigen bundle brew-cask

# autocomplete for maven
antigen bundle mvn

# suggest install when command not found
antigen bundle command-not-found 

# extract archive files
antigen bundle extract
 
#iterm color tab
#antigen bundle tysonwolker/iterm-tab-colors

# docker code completion
antigen bundle docker
antigen bundle docker-compose
 
# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
 
 
# suggestions
antigen bundle tarruda/zsh-autosuggestions
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=8

antigen bundle zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)


# Load the theme.
# antigen bundle sindresorhus/pure # https://github.com/sindresorhus/pure
# or
# antigen theme robbyrussell #
# or
#antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship # https://github.com/denysdovhan/spaceship-zsh-theme
# or
# antigen theme agnoster 
# or
antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship
SPACESHIP_PROMPT_ORDER=(
  time          # Time stampts section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
#  hg            # Mercurial section (hg_branch  + hg_status)
  package       # Package version
  node          # Node.js section
  ruby          # Ruby section
#  elixir        # Elixir section
#  xcode         # Xcode section
#  swift         # Swift section
#  golang        # Go section
#  php           # PHP section
#  rust          # Rust section
#  haskell       # Haskell Stack section
#  julia         # Julia section
  docker        # Docker section
#  aws           # Amazon Web Services section
#  venv          # virtualenv section
# conda         # conda virtualenv section
#  pyenv         # Pyenv section
#  dotnet        # .NET section
#  ember         # Ember.js section
#  kubecontext   # Kubectl context section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

# Tell antigen that you're done.
antigen apply


##############################################################################
###
###   aliases
###
##############################################################################
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
alias ia="open $1 -a /Applications/iA\ Writer.app"

if [ -f ~/.config/aliases ]; then
    source ~/.config/aliases
fi

# git-extras aliases
# https://github.com/tj/git-extras/blob/master/man/git-feature.md#examples
git alias fix "feature -a fix"
git alias core "feature -a core"


## the fuck
  eval $(thefuck --alias)
 
# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# own shell scripts
export PATH="/Users/$DEFAULT_USER/shellscripts/bin:$PATH"
export PATH="/Users/$DEFAULT_USER/anaconda/bin:$PATH"

# own functions -> should be moved to other file, and added to copy pipeline for git sync

# get shell of given docker container id
dexec ()
{
  docker exec -it $1 sh
}

# jenv
export PATH="$HOME/.jenv/bin:$PATH"
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

# ANDROID PATH
export ANDROID_HOME="/Users/$DEFAULT_USER/Library/Android/sdk"
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/build-tools/28.0.3

# Java installations (only if they are installed)
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
#export JAVA_9_HOME=$(/usr/libexec/java_home -v9)
#export JAVA_10_HOME=$(/usr/libexec/java_home -v10)
export JAVA_11_HOME=$(/usr/libexec/java_home -v11)
export JAVA_12_HOME=$(/usr/libexec/java_home -v12)

alias java8='export JAVA_HOME=$JAVA_8_HOME'
#alias java9='export JAVA_HOME=$JAVA_9_HOME'
#alias java10='export JAVA_HOME=$JAVA_10_HOME'
alias java11='export JAVA_HOME=$JAVA_11_HOME'
alias java12='export JAVA_HOME=$JAVA_12_HOME'

java8

fpath=(/usr/local/share/zsh-completions $fpath)

zprof

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# language
alias git='LANG=en_GB git'
