# ~/.bashrc
#configs
# Only run this part if the shell is interactive
case $- in
    *i*) ;;
      *) return;;
esac


shopt -s nocaseglob
shopt -s expand_aliases

# alias
alias wifi='ping x.com'
alias fixWifi='sudo systemctl restart systemd-resolved'
alias ls='ls --color=auto'
alias chr='chromium'
alias scrot="~/.local/other/myscreenshot.sh"
alias py='python'
alias mariadb="sudo /usr/bin/mariadb -u massiveAnalizer -p"
alias boomer="cd ~/.local/src/boomer && ./boomer"
alias grep="/usr/bin/grep $GREP_OPTIONS"
alias ghtoken="sudo grep 'GITHUB-DEVSETTINGS-TOKEN=' ~/keys | sed 's/.*GITHUB-DEVSETTINGS-TOKEN=\(.*\)/\1/' | xclip -selection clipboard"
PS1='[\u@\h \W]\$ '
alias syus="sudo pacman -Syu && sudo shutdown now"
alias vamonos="sudo shutdown now"
alias e="nvim"
alias syu="sudo pacman -Syu"

# EXPORTS (env variables)
export HISTFILESIZE=10000
export HISTSIZE=500
export PRINTER=EPSON_L355

# Don't put duplicate lines in the history and do not add lines that start with a space
export HISTCONTROL=erasedups:ignoredups:ignorespace

export MANPATH="/usr/local/texlive/2023/texmf-dist/doc/man:$MANPATH"
export INFOPATH="/usr/local/texlive/2023/texmf-dist/doc/info:$INFOPATH"
export PATH="/usr/local/texlive/2023/bin/x86_64-linux:$HOME/.dotnet/tools:/usr/local/MATLAB/R2024a:$HOME/.cargo/bin$PATH"

export EDITOR=nvim
export TERMINAL=alacritty
export LLAMA_DEV_TOKEN=LA-e847fd7e33774657b27b25fb4172f3383ff6721af96c4821ab62dc10fada8de9

export GROG_CLOUD_API_DEV_TOKEN=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


export ORACLE_HOME=/opt/oracle/instantclient_23_7
export PATH=$ORACLE_HOME:$PATH
export LD_LIBRARY_PATH=$ORACLE_HOME:$LD_LIBRARY_PATH

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# pnpm
export PNPM_HOME="/home/erick/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
