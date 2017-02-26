# load antigen
source $(brew --prefix)/share/antigen/antigen.zsh

#comment in for performance tracking (and also zprof at the end of the file)
#zmodload zsh/zprof

SAVEHIST=1000
DEFAULT_USER="alexanderzulechner"
 
 
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
# antigen bundle unixorn/bitbucket-git-helpers.plugin.zsh
 
# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
 
 
# suggestions
antigen bundle tarruda/zsh-autosuggestions
 
# antigen bundle mafredri/zsh-async
# Load the theme.
# antigen bundle sindresorhus/pure # https://github.com/sindresorhus/pure
# or
# antigen theme robbyrussell #
# or
antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship # https://github.com/denysdovhan/spaceship-zsh-theme
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

# for later if more aliases are necessary
#if [ -f ~/.config/aliases ]; then
#    source ~/.config/aliases
#fi

 
 
# nvm
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

#zprof