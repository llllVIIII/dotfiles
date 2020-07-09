# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

# Created by newuser for 5.8
source ~/.zplug/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'
#zplug romkatv/powerlevel10k, as:theme, depth:1, frozen:1
zplug mafredri/zsh-async, from:github, depth:1
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme, depth:1
zplug 'wfxr/forgit', depth:1, frozen:1
zplug 'plugins/fzf', from:oh-my-zsh, depth:1, frozen:1
zplug 'DarrinTisdale/zsh-aliases-exa', depth:1, frozen:1
zplug 'zdharma/fast-syntax-highlighting', depth:1, defer:2, frozen:1
alias bd=". bd -si"
zplug 'vigneshwaranr/bd', depth:1, as:command, frozen:1
# zplug 'zpm-zsh/ls'

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
# zplug load --verbose
zplug load 

# load module for list-style selection
zmodload zsh/complist

# use the module above for autocomplete selection
zstyle ':completion:*' menu yes select

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
