# ~/.zprofile

# PATH

case :$PATH:
	in *:/home/ilmu/.scripts:*) ;;
		*) export PATH="${PATH}:/home/ilmu/.scripts";;
esac

case :$PATH:
	in *:/home/ilmu/.local/bin:*) ;;
	*) export PATH="${PATH}:/home/ilmu/.local/bin"
esac

case :$PATH:
	in *:/opt/nexusmods-app:*) ;;
		*) export PATH="${PATH}:/opt/nexusmods-app";;
esac

case :$PATH:
	in *:/home/ilmu/.local/python/pywal/bin:*) ;;
		*) export PATH="${PATH}:/home/ilmu/.local/python/pywal/bin";;
esac

# ssh-agent

SSH_ENV="$HOME/.ssh/agent_env"

if ! pgrep -u "$USER" ssh-agent > /dev/null; then
	ssh-agent > "$SSH_ENV"
fi
if [[ ! -f "$SSH_AUTH_SOCK" ]]; then
	source "$SSH_ENV" > /dev/null
fi

# tty-colors

if [[ $(tty) != *pts* ]]; then
	cat ~/.zsh/tty_colors
fi

# man colors

export MANPAGER="less -R --use-color -Dd+r -Du+b"
export MANROFFOPT="-P -c"

# wine cfg

export WINE=`which wine`
export WINETRICKS=`which winetricks`

# editor

export EDITOR='nvim'

# export wal colors

N=0

while read line; do
	export WAL_COLOR_$N=$line
	((N++))
done < ~/.cache/wal/colors
