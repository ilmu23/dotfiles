# Fuck your logs
alias startx='startx -logverbose -1'

# Important aliases
alias ls='ls --color=auto'
alias lsa='ls -alh'
alias src='source ~/.bashrc'
alias mkdir='mkdir -p'
alias cd..='cd ..'
alias clr='clear'
alias sudo='sudo '
alias :q='exit'
alias xr144='xrandr --output DisplayPort-1 --mode 1920x1080 --rate 144'

# dircolors
d=-.dircolors
test -r $d && eval "$(dircolors $d)"

# Profile
if [ -f ~/.bash_profile ]; then
    . ~/.bash_profile
fi

# PS
source ~/.bash_ps

# Newline
_prompt_command() {
	local curpos
	echo -en "\E[6n"
	IFS=";" read -sdR -a curpos
	((curpos[1]!=1)) && echo -e '\E[1m\E[47m\E[30m%\E[0m'
}
PROMPT_COMMAND=_prompt_command
