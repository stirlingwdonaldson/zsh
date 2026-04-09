# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# dotfiles/zsh/.zshrc


# +-----------------------------+
# |    ZSH GENERAL SETTINGS     |
# +-----------------------------+

export ZSH="$HOME/.oh-my-zsh" # keep at top.

# ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="%F{white}...%f"
DISABLE_UNTRACKED_FILES_DIRTY="true" 
plugins=(
  git
  fzf
  zoxide
  you-should-use
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh # keep at bottom


# +----------------------------+
# |          ALIASES           |
# +----------------------------+

# applications
alias vi="nvim"
alias lg="lazygit" 
alias oc="opencode" 

# general
alias c="clear"
alias md="mkdir"
alias mf="touch"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
