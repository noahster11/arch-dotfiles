# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/noah/.zshrc'


autoload -U colors && colors



autoload -Uz compinit promptinit
compinit
promptinit

typeset -U path
path=(~/bin $path)
setopt completealiases

[ -r /etc/profile.d/cnf.sh ] && . /etc/profile.d/cnf.sh
setopt HIST_IGNORE_DUPS

#prompt="%{fg_no_bold[blue]%}┌─[%{[$reset_color]%}%{[$fg[cyan]]%}%n@%{[$reset_color]%}%{[$fg_no_bold[blue]]%}]-[%{[$reset_color]%}%{[$fg_bold[cyan]]%}%~%{[$reset_color]%}\n└─ >"

#PROMPT='%F{cyan}[%F{red}%~%F{cyan}]%F{blue}───%f '

prompt='%F{cyan}┌─[%F{blue}%n@%m%F{cyan}]-[%F{blue}%t%F{cyan}]
%F{cyan}└─[%F{blue}%~%F{cyan}] %F{blue}%# '
# End of lines added by compinstall

alias ls='ls --color=auto'
[ -n "$XTERM_ VERSION" ] && transset-df -a >/dev/null

unpack () {
  if [ -f $1 ] ; then
      case $1 in
          *.tar.bz2)   tar xvjf $1    ;;
          *.tar.gz)    tar xvzf $1    ;;
          *.bz2)       bunzip2 $1     ;;
          *.rar)       rar x $1       ;;
          *.gz)        gunzip $1      ;;
          *.tar)       tar xvf $1     ;;
          *.tbz2)      tar xvjf $1    ;;
          *.tgz)       tar xvzf $1    ;;
          *.zip)       unzip $1       ;;
          *.Z)         uncompress $1  ;;
          *.7z)        7z x $1        ;;
          *)           echo "don't know how to extract '$1'..." ;;
      esac
  elseup
      echo "'$1' is not a valid file!"
  fi
}
