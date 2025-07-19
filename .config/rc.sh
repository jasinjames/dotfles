# Cross machine shell preferences
#
# Broadly universal shell preferences like history, prompt, and simple aliases go here to be included by the appropriate interactive shell.
# This will necessarily be a nonportable configuration file, and I'm not aiming for universality. I typically use the default shell configured
# on any given system I use (so I'm not dependent on a possibly-unavailable featureset for day-to-day use), so zsh specific settings will fail on bash and visa-versa. 

# Unlike some of the other files in the .config directory, this file is not automatically picked up by the shell like .zshrc, .bash_profile, etc. might be
# This is intentional so that I can add a `source ~/.config/rc.sh` line to my shell's config and use these options without stomping on machine specific configuration like secrets and PATH modifications which I wouldn't want to include here


export CLICOLOR=1

# A bunch of ZSH specific config
# https://zsh-prompt-generator.site/
PROMPT="%F{red}%n%f%F{red}:%f%B%F{magenta}%~%f%b %% "
RPROMPT="%?"

export HISTFILE=~/.zsh_history
export HISTSIZE=999999999 # Needs a real number since loaded into memory
export SAVEHIST=$HISTSIZE
setopt hist_reduce_blanks   # Remove superfluous blanks before recording entry. Not sure if this interferes with string literals
setopt hist_ignore_all_dups # Don't add duplicates
setopt inc_append_history   # Write to the history file immediately, not when the shell exits.
setopt share_history        # Share history between all sessions.

alias l='ls -lah'

