# Installs the zsh plugins that I absolutely adore. 
# Since I don't use oh-my-zsh anymore, the plugins downloaded here are sourced directly in the `.zshrc` file.
# Requires `npx` to be installed so that the git repositories for the plugins can be cloned without their `.git` folder. 
# TODO: remove dependency on `npx`


PLUGIN_DIR=~/.zsh/plugins
# Create .zsh/plugins directory in the home directory if not created already
mkdir -p PLUGIN_DIR

# ZSH Autosuggestions
npx degit https://github.com/zsh-users/zsh-autosuggestions $PLUGIN_DIR/zsh-autosuggestions

# ZSH Syntax Highlighting
npx degit https://github.com/zsh-users/zsh-syntax-highlighting.git $PLUGIN_DIR/zsh-syntax-highlighting
