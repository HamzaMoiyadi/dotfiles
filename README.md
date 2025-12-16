# Personal DotFiles Repo

## Requirements

1. [ZSH](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH#install-and-set-up-zsh-as-default)
2. [Starship](https://starship.rs/guide/#%F0%9F%9A%80-installation)
3. Any Nerd Font. [Preference is Fira Code (till now at least)](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip)

### Starship

Starship is what customizes the "starting" part of the terminal. This can be achieved by using `oh-my-zsh` as well, but I prefer using something that isn't very "connected". In this case, I will need `zsh` to run `oh-my-zsh`. And while `zsh` **is** part of this setup, I am weird. So get with it.

### ZSH

The actual shell that will interact with the deeper layers of the OS.

### Nerd Font

These are fonts made specifically for developers. They have ligatures and icons and shiz that help us wizards out while casting Terminal spells.

## File List

### Shell Stuff

-   `.zshrc`: File that is sourced the first time shell is opened.
-   `.zshenv`: List of environment variables that will be used in the ZSH shell
-   `.config/zsh`: Contains `.zsh` files for `aliases` and `functions`
-   `starship.toml`: Shell Prompt configuration.
-   `windows-terminal-settings.jsonc`: Stripped down `.json` file containing settings for Windows Terminal

### TODO

[ ] Create private gists for the installation scripts, as keeping them in the `dotfiles` repo does not make sense thematically.
[ ] Clean-up `windows-terminal-settings.jsonc`.
