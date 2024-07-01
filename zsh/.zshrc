export DOTFILES="$HOME/.dotfiles"

## SET UP THE PROMPT
fpath=($DOTFILES/zsh/.config/zsh_plugins $fpath)
source $DOTFILES/zsh/.config/zsh_plugins/purification_prompt_setup


setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

## COMPLETION SYSTEM
autoload -Uz compinit
compinit
source $DOTFILES/zsh/.config/zsh_plugins/completion.zsh

## DIRECTORY PUSH AND POP
setopt AUTO_PUSHD           # Push the current directory visited on the stack.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.

alias d='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index

## VI MODE
bindkey -v
export KEYTIMEOUT=1
source $DOTFILES/zsh/.config/zsh_plugins/vim_cursor_mode

zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

autoload -Uz select-bracketed select-quoted
zle -N select-quoted
zle -N select-bracketed
for km in viopp visual; do
  bindkey -M $km -- '-' vi-up-line-or-history
  for c in {a,i}${(s..)^:-\'\"\`\|,./:;=+@}; do
    bindkey -M $km $c select-quoted
  done
  for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do
    bindkey -M $km $c select-bracketed
  done
done

## BACK DIRECTORY (bd a; bd b)
source $DOTFILES/zsh/.config/zsh_plugins/bd.zsh

## ALIASES
alias l='ls -laht --color=tty'
alias lt='ls -ltr --color=tty'
alias vim='nvim'


## SYNTAX HIGHLIGHTING
source $DOTFILES/zsh/.config/zsh_plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


export LC_ALL="en_US.UTF-8"
export PATH="$PATH:/opt/nvim/"
