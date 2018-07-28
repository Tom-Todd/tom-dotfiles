# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle :compinstall filename '/home/tom/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob
# End of lines configured by zsh-newuser-install
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
autoload -Uz promptinit
promptinit
prompt paradox
source ~/.zsh_aliases
neofetch --colors 1 1 1 1 1 6 --memory_display bar --ascii ~/.config/neofetch/ascii
rm -f ~/.local/share/applications/wine-*
