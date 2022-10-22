# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

source /home/abel/sudo.plugin.zsh

#Aliases
alias ll='lsd -lh --group-dirs=first'  #cambiamos ls por lsd es mas colorido
alias la='lsd -a --group-dirs=first'
alias l='lsd --group-dirs=first'
alias lla='lsd -lha --group-dirs=first'
alias ls='lsd --group-dirs=first'
alias icat="kitty +kitten icat"
alias lv='live-server'  #para usar live-server
alias cat='/bin/bat'  #reemplaza un cat por un bat
alias catn='/bin/cat' #es un cat normal
alias catnl='/bin/bat --paging=never'  #te en lista un cat usando bat pero en una pagina

alias v='openNvim'
#alias actualizar='sudo apt update && sudo apt full-upgrade'

#funcion para iniciar neovim con Nerdtree
function openNvim {
  if [ $# -eq 0 ]; then
    nvim ./
  else
    nvim $1
  fi
}


#para que ignore las mayusculas y minusculas
zstyle ':completion:*' matcher-list \
    'm:{[:lower:]}={[:upper:]}' \
    '+r:|[._-]=* r:|=*' \
    '+l:|=*'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source /home/abel/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
