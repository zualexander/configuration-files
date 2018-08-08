# load antigen
source $(brew --prefix)/share/antigen/antigen.zsh

#comment in for performance tracking (and also zprof at the end of the file)
zmodload zsh/zprof

SAVEHIST=1000
DEFAULT_USER="__user__"
skip_global_compinit=1
 
# Load the oh-my-zsh's library.
antigen use oh-my-zsh
# antigen bundles to load (for a complete list see https://github.com/unixorn/awesome-zsh-plugins )
antigen bundle git
antigen bundle unixorn/git-extra-commands
antigen bundle command-not-found
antigen bundle extract
# brew autocompletion
antigen bundle brew
antigen bundle brew-cask
 
 
# hipchat (to send msgs via cli)
# antigen bundle robertzk/hipchat.zsh
 
# bitbucket
antigen bundle unixorn/bitbucket-git-helpers.plugin.zsh
 
# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
 
 
# suggestions
antigen bundle tarruda/zsh-autosuggestions
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=5

 
# antigen bundle mafredri/zsh-async


# Load the theme.
# antigen bundle sindresorhus/pure # https://github.com/sindresorhus/pure
# or
# antigen theme robbyrussell #
# or
#antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship # https://github.com/denysdovhan/spaceship-zsh-theme
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
#  ruby          # Ruby section
#  elixir        # Elixir section
#  xcode         # Xcode section
#  swift         # Swift section
#  golang        # Go section
#  php           # PHP section
#  rust          # Rust section
  haskell       # Haskell Stack section
#  julia         # Julia section
  docker        # Docker section
#  aws           # Amazon Web Services section
  venv          # virtualenv section
  conda         # conda virtualenv section
  pyenv         # Pyenv section
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
if [ -f ~/.config/aliases ]; then
    source ~/.config/aliases
fi


## the fuck
  eval "$(thefuck --alias)" 
 
# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# own shell scripts
export PATH="/Users/$DEFAULT_USER/shellscripts/bin:$PATH"
export PATH="/Users/$DEFAULT_USER/anaconda/bin:$PATH"

## CORDOVA
# Create a JAVA_HOME variable, determined dynamically
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home
# Add that to the global PATH variable


export PATH=$JAVA_HOME/bin:$PATH
# Set Android_HOME
export ANDROID_HOME=~/Library/Android/sdk/
# Add the Android SDK to the ANDROID_HOME variable
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$PATH:/usr/local/Cellar/gradle/4.9/bin

fpath=(/usr/local/share/zsh-completions $fpath)

zprofbecontext   # Kubectl context section
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
if [ -f ~/.config/aliases ]; then
    source ~/.config/aliases
fi


## the fuck
  eval "$(thefuck --alias)" 
 
# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# own shell scripts
export PATH="/Users/$DEFAULT_USER/shellscripts/bin:$PATH"
export PATH="/Users/$DEFAULT_USER/anaconda/bin:$PATH"

## CORDOVA
# Create a JAVA_HOME variable, determined dynamically
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home
# Add that to the global PATH variable


export PATH=$JAVA_HOME/bin:$PATH
# Set Android_HOME
export ANDROID_HOME=~/Library/Android/sdk/
# Add the Android SDK to the ANDROID_HOME variable
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$PATH:/usr/local/Cellar/gradle/4.9/bin

fpath=(/usr/local/share/zsh-completions $fpath)

zprof

## sendhybrid e-brief
export SHELL=/usr/local/bin/zsh
# Init jenv
if which jenv > /dev/null; then eval "$(jenv init -)"; fi
