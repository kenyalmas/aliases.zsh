######## Hello, my name is Keny & I have no idea what I am doing ##################################################################

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@_@.-')@@@@@@@@@@@@@@@@@@@@@@@.-.@.-')@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#( (  OO) )@@@@@@@@@@@@@@@@@@@@\  ( OO )@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# \     .'_@,======.@======@@@,--. ,--.,======.,==.@@,==,@,==.@@@,==.@@@@@@@@@@@
#@,`'--..._)|  .---',  --.  \@|  .'   /|  .---'|   \@|  |@@\  `.'  /@@@@@@@@@@@@
#@|  |@@\  '|  |@@@@|  |@@\  '|      /,|  |@@@@|    \|  |.-')     /@@@@@@@@@@@@@
#@|  |@@@' ||  '--.@|  |@@@  ||     '@@|  '--.@|  .     (OO  \   /@@@@@@@@@@@@@@
#@|  |@@@/ :|  .--'@|  |@@@  :|  .   \@|  .--'@|  |\    ||   /  /@@@@@@@@@@@@@@@
#@|  '--'  /|  `---.|  '--'  /|  |\   \|  `---.|  |@\   |`-./  /@@@@@@@@@@@@@@@@
#@`======='@`======'`======='@`=='@'=='`======'`=='@@`=='@@`=='@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@...@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@...@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@@......@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@*..................@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@............@@@@@/..........@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@......@@@@@......@@@@@@@@@@&......@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@.....@@@@@@@@.......@@@@@@@@@@@@@.....@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@.....@@@@@@@@@@.........@@@@@@@@@@@@@.....@@@(....@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@..../@@@@@@@@@@@....@@....,@@@@@@@@@@@@@..........%@@@@@@@@@@@@@@@@
#@@@@@@@@@@@....@@@@@@@@@@@@@....@@@.....@@@@@#...........@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@....@@@@@@@@@@@@@....@@@@@.............@@@%...,@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@....@@@@@@@@@@@@@@...............&@@@@@@@@@@....@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@....@@@@@@@@@@@@..........*@@@.....@@@@@@@@@....@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@....@@@@*............@@@@@@@@@@....@@@@@@@@....@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@.....................@@@@@@@@@@@.....@@@@@....@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@.................................@@@@@....*@@@....@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@....@@....@@@@@@@@@@@....@@@..........@(.........@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@.....@@@@@@@@@....@@@@@@@@@@............@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@.....,@@@@@@....@@@@@@@@@@@@@@........@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@....../@@....@@@@@@@@@@@.............@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@.........................@@@@@.....@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@............@@@@@@@@@@@@@@*..@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@....@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@....@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@....@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@.................@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@.................@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@....@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@....@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@


################ System Configs ####################################################################################################


# Bash fallback PS1 Prompt
#export DEFAULTPS1=$PS1
#export PS1="i\[\033[1;31m\]\u@\H\[\033[1;37m\]:\[\033[1;32m\]\w\n> \[$(tput sgr0)\]"

if [ -d "$HOME/Git" ] ;
then PATH="$HOME/Git:$PATH"
fi

if [ -d "$HOME/.bin" ] ;
then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
then PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/Applications" ] ;
then PATH="$HOME/Applications:$PATH"
fi

if [ -d "/var/lib/flatpak/exports/bin/" ] ;
then PATH="/var/lib/flatpak/exports/bin/:$PATH"
fi

export PATH=$PATH:/usr/local/go/bin                  # Adds Go into PATH as directed from creators
export HISTTIMEFORMAT="%F %T "                       # Adds a time listing with "history" command
export HISTCONTROL=ignoreboth                        # Removes duplicates from .bash_history
export CLICOLOR=1                                    # Not quite sure if it really works...
export PATH=$PATH:/usr/bin/python3.13				 # Adding Python3.13 to path for easier use
#export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Starship install
#curl -sS https://starship.rs/install.sh | sh
#eval "$(starship init zsh)"

# Colorscript Gitlad @ "https://gitlab.com/dwt1/shell-color-scripts"
# DistroTube's color-scripts install
#git clone https://gitlab.com/dwt1/shell-color-scripts.git
#cd shell-color-scripts
#sudo make install
colorscript random

# Circuitpython needs this path
#export PATH=/home/$USER/bin/gcc-arm-none-eabi-10-2020-q4-major/bin:$PATH

################# Aliases ##########################################################################################################

# the terminal rickroll
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | zsh'

# Quality of life Aliases
alias :q='exit'

alias ..='cd ..'

alias ls='ls --color=auto'          # Adds color to ls output

alias la='ls -A'                    # Show ALL W/O "." & ".." directories

alias ll='ls -alF'                  # LIST ALL with FILE extention

alias lh='ls -d .* --color=auto'    # List hidden

alias hg='history | grep'           # Usage: "hgrep [keyword]"

alias grep='grep --color=auto'      # Adds color to grep output

alias egrep='egrep --color=auto'

alias fgrep='fgrep --color=auto'

alias df='df -h'                          # human-readable sizes

alias free='free -m'                      # show sizes in MB

alias psa="ps auxf"

alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"

alias psmem='ps auxf | sort -nr -k 4'

alias pscpu='ps auxf | sort -nr -k 3'

alias up="sudo apt update -y && sudo apt dist-upgrade -y && sudo apt autoremove -y"

# Shortcuts for Git
alias commit="git commit"

alias gadd="git add ."

alias pushit="git add .; git commit -m 'diff it out'; git push -u origin main"

# Shortcuts for non-vanilla programs
alias copy="xclip -selection clipboard"
