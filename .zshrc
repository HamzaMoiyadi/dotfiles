[[ -f ~/.config/zsh/aliases.zsh ]] && source ~/.config/zsh/aliases.zsh
[[ -f ~/.config/zsh/functions.zsh ]] && source ~/.config/zsh/functions.zsh

# ZSH_THEME="dracula"
ZSH_PLUGINS="$HOME/.zsh/plugins"

plugins=(git nvm zsh-syntax-highlighting)

# ZSH Autosuggestions: https://github.com/zsh-users/zsh-autosuggestions
[[ -f $ZSH_PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh ]] && source $ZSH_PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh

# ZSH Autosuggestions: https://github.com/zsh-users/zsh-syntax-highlighting 
[[ -f $ZSH_PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source $ZSH_PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Configure ZSH Autosuggestions
# initialize autocompletion
autoload -U compinit
compinit

# history setup
setopt APPEND_HISTORY
setopt SHARE_HISTORY
HISTFILE=$HOME/.zsh_history
SAVEHIST=1000
HISTSIZE=999
setopt HIST_EXPIRE_DUPS_FIRST
setopt EXTENDED_HISTORY

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion



# Starship
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
