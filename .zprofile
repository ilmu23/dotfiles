# ~/.zprofile

# PATH

export PATH="${PATH}:/home/ilmu/.scripts"
export PATH="${PATH}:/home/ilmu/.local/bin"

# ssh-agent

SSH_ENV="$HOME/.ssh/agent_env"

if ! pgrep -u "$USER" ssh-agent > /dev/null; then
	ssh-agent > "$SSH_ENV"
fi
if [[ ! -f "$SSH_AUTH_SOCK" ]]; then
	source "$SSH_ENV" > /dev/null
fi

# man colors

export MANPAGER="less -R --use-color -Dd+r -Du+b"
export MANROFFOPT="-P -c"

# 42 Header conf

export MAIL="ivalimak@student.hive.fi"
