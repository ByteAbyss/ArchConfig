#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# enable programmable completion features 
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

export PS1="\[\e[33m\][\[\e[m\]\[\e[34m\]\u\[\e[m\]@\[\e[31m\]\h\[\e[m\]\[\e[31m\]:\[\e[m\]\[\e[36m\]\W\[\e[m\]\[\e[33m\]]\[\e[m\]\[\e[32m\]:\[\e[m\] "


# don't put duplicate lines or lines starting with space in the history.
export HISTCONTROL=ignoreboth:erasedups

#shopt
shopt -s autocd # change to named directory
shopt -s cdspell # autocorrects cd misspellings
shopt -s cmdhist # save multi-line commands in history as single line
shopt -s dotglob
shopt -s histappend # do not overwrite history
shopt -s expand_aliases # expand aliases


# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTFILE=~/.Command_and_Control
HISTSIZE=2000
SAVEHIST=3000

BROWSER=/usr/bin/vivaldi-stable 
EDITOR=/usr/bin/vim 

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# fix spelling errors for cd, only in interactive shell
shopt -s cdspell

#####  Personal Alias Functions ###### 
alias i3-edit='vim /home/joe/.config/i3/config'
alias build-dwm='cd /home/joe/bin/dwm-6.2/ && make && sudo make clean install'
alias edit-dwm='cd /home/joe/bin/dwm-6.2/ && vim /home/joe/bin/dwm-6.2/config.h'
alias rm='rm -f'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias vi="vim"
alias youtube-dl="youtube-dl -ci -o '%(autonumber)s-%(title)s-%(upload_date)s.%(ext)s'" 
alias df='df -hTl -x tmpfs -x devtmpfs -x squashfs --total'
alias psmem='ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head --lines=15'
alias pscpu='ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head --lines=15'
alias findmnt='findmnt --df'
alias last20pack="expac --timefmt='%F %T' '%l %n' | sort -n | tail -n 20"
alias vectrex='cd /home/joe/Vectrex/ParaJVE/ && ./ParaJVE'
# Upgrade - overwirte python site / Remove Orphan Depemdencies / Clean Cache 
alias up='sudo pacman -Syu --noconfirm --overwrite=/usr/lib/python3.8/site-packages/* && sudo pacman -Scc && sudo pikaur -Syu'
alias purge='sudo pacman -Rsu'
alias search='sudo pikaur -Ss'
alias install='sudo pikaur -S'
#alias nas_back_up="ssh joevalcancick@10.0.0.250 'cd /root && cat *.txt'"
alias nas='ssh joe@10.0.0.250'
alias recent_history="history | dmenu -l 20 | sed 's/^\s*[0-9]\+\s*//'"
alias tmux_colors='for i in {0..255}; do printf "\x1b[38;5;${i}mcolor%-5i\x1b[0m" $i ; if ! (( ($i + 1 ) % 8 )); then echo ; fi ; done'
alias Whovian='cd /home/joe/Dev/Python/Projects/Who_Collection_Management/ && python __main__.py'

# Upgrade 
alias pip_up="sudo pip3.8 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 sudo pip3.8 install -U"

# Path Help #
export PATH=$PATH:/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/joe/bin/:/opt/:/home/joe/.local/bin 

export PYTHONPATH=$PYTHONPATH:/home/joe/bin/

CDPATH=.:~:/mnt/E-Space/

#Vi Mode
set  -o vi

cd /home/joe/

# Spec Data #
alsi

/home/joe/bin/jokes.py

