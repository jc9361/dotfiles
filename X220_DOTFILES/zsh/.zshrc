#        _                                        _     _
#   ___ | |__        _ __ ___  _   _      _______| |__ | |
#  / _ \| '_ \ _____| '_ ` _ \| | | |____|_  / __| '_ \| |
# | (_) | | | |_____| | | | | | |_| |_____/ /\__ \ | | |_|
#  \___/|_| |_|     |_| |_| |_|\__, |    /___|___/_| |_(_)
#                              |___/
# ThinkPad X220
# Version 1.5


. "${HOME}/.cache/wal/colors.sh"

# Create the alias.
alias dmen='dmenu_run -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15"'


#
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/r3dux/.oh-my-zsh"

# THEME
#ZSH_THEME="random"
ZSH_THEME="nanotech"
#ZSH_THEME="gallois"
#ZSH_THEME="theunraveler"
#ZSH_THEME="wedisagree"
#ZSH_THEME="superjarin"
#ZSH_THEME="eastwood"
#ZSH_THEME="jbergantine"
#ZSH_THEME="powerlevel10k/powerlevel10k"
#ZSH_THEME="gnzh"
#ZSH_THEME="kardan"
#ZSH_THEME="fox"
#ZSH_THEME="josh"
#ZSH_THEME="aussiegeek"
#ZSH_THEME="agnoster"
#ZSH_THEME="robbyrussell"
#ZSH_THEME="afowler"

#ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=1

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
         fzf
         zsh-autosuggestions
         zsh-syntax-highlighting

)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ALIASES
alias p='python ~/code/python/tools/ping.py'
alias del='rm -rf'
alias wally='python3 ~/bin/wally.py'
alias h='cd'
alias covid='python3 ~/code/python/tools/covid.py'
alias covid2='python3 ~/code/python/tools/covid_2.py'
alias arp='python3 ~/code/python/tools/arp_scanner.py'
alias vpn='python3 ~/code/python/tools/vpn-tool.py'
alias services='systemctl --type=service'
alias todo='calcurse'
alias f='fff'
alias bsprc='nvim ~/.config/bspwm/bspwmrc'
alias sxhkdrc='nvim ~/.config/sxhkd/sxhkdrc'
alias polyconf='nvim ~/.config/polybar/config'
alias piconf='nvim ~/.config/picom/picom.conf'
alias gh='surf github.com/jc9361'
alias ls='exa --icons'
alias photos='sxiv -t -f ~/pictures'
alias uptime='uptime -p'
alias update-zsh='upgrade_oh_my_zsh'
alias ytop='ytop -b -f'
alias fetch='pfetch'
alias fsociety='python2 ~/code/hacking/fsociety/fsociety.py'
alias ..='cd ..'
alias audio='pavucontrol'
alias eq='qpaeq'
alias mixer='alsamixer'
alias myip='ip --color=auto a'
alias neo='unimatrix -c white -s 92 -u abcdefghijklmnopqrstuvwxyz1234567890!@#$%'
alias pbar='nvim .config/polybar/config'
alias i3='nvim ~/.i3/config'
alias i3stat='nvim ~/.config/i3status_config'
alias compconf='nvim ~/.config/compton/compton.conf'
alias nvimrc='nvim ~/.config/nvim/init.vim'
alias bashrc='nvim ~/.bashrc'
alias zshrc='nvim ~/.zshrc'
alias system='bmenu'
alias files='ranger'
alias xfiles='sudo ranger'
alias root='sudo -i'
#alias yt='youtube-dl'
alias yt='python3 ~/code/python/tools/youtube_dl.py'
alias crittyconf='nvim ~/.config/alacritty/alacritty.yml'
alias netstat='sudo iftop -i wlp3s0'
alias mix='pulsemixer'

# PACMAN
alias sync='sudo pacman --color auto -Syy'
alias update='sudo pacman --color auto -Syyu'
alias search='pacman --color auto -Ss'
alias install='sudo pacman --color auto -S'
alias remove='sudo pacman --color auto -Rns'
alias paclist='pacman --color auto -Q | less'
alias pacsearch='pacman --color auto -Q | grep'
alias autoclean='sudo pacman -Qdt'
alias linuxtool='python3 /home/r3dux/code/python/linuxtool.py'

# SSH
alias MBP='ssh 192.168.0.238'
alias SB2='ssh 192.168.0.153'
alias x220='ssh 192.168.0.253'
alias mom='ssh janakind-chadwick@192.168.0.9'

# PYWAL
(cat ~/.cache/wal/sequences &)

# ADD TO PATH
export PATH="/home/r3dux/.cargo/bin:$PATH"
export PATH="/home/r3dux/scripts:$PATH"
export PATH="/home/r3dux/bin:$PATH"
export PATH="/home/r3dux/.emacs.d/bin:$PATH"

# VI MODE
bindkey -v

# FZF search
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

## TMUX
#[[ $- != *i* ]] && return
## Otherwise start tmux
#[[ -z "$TMUX" ]] && exec tmux

# FORTUNE
clear && python3 ~/code/python/tools/fortune.py

