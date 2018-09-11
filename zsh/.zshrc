# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Straight from .bashrc
export PATH='/home/john/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games:$PATH'
# Path to your oh-my-zsh installation.
  export ZSH=/home/john/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="clean"
#ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

#-Aliasses-----------------------------

alias lf='ls -lhaF' #human readable and show dirs, executables

#John's timehardened aliases from bash
alias cl='clear'
alias hop=htop
alias up='cd ..'
alias loud='mixerctl outputs.master=200,200'
alias low='mixerctl outputs.master=100,100'
#Actually Pinguinradio
alias aardschok='mplayer http://178.18.137.245/;stream.nsv/&type=mp3'
alias bbc4="mplayer http://bbcmedia.ic.llnwd.net/stream/bbcmedia_radio4fm_mf_p"
alias stop='doas shutdown -p now'

# dirs navigation
# type drs to see list, 1-9 to go to dir
alias drs='dirs -v | head -10'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

#------------------------------
#
# Caps_Lock will henceforth Escape, also autoset in .xinitrc
#Made obsolete by .xinitrc
#alias nocaps='xmodmap -e "remove Lock = Caps_Lock" && xmodmap -e "keysym Caps_Lock = Escape"'
alias nob='xset s off'
alias blank='xset s 20'
