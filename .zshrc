[[ -f ~/.config/zsh/aliases.zsh ]] && source ~/.config/zsh/aliases.zsh
[[ -f ~/.config/zsh/functions.zsh ]] && source ~/.config/zsh/functions.zsh

ZSH_THEME="dracula"
ZSH_PLUGINS="$HOME/.zsh/plugins"

plugins=(git nvm)

# ZSH Autosuggestions: https://github.com/zsh-users/zsh-autosuggestions
[[ -f $ZSH_PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh ]] && source $ZSH_PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh

# ZSH Autosuggestions: https://github.com/zsh-users/zsh-syntax-highlighting 
[[ -f $ZSH_PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source $ZSH_PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Export NVIM Directory
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion



# Starship
eval "$(starship init zsh)"

# Zoxide
eval "$(zoxide init zsh)"
