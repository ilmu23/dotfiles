#
# ~/.bash_profile
#

# PATH

export PATH="${PATH}:/home/ilmu/.scripts"
export PATH="${PATH}:/home/ilmu/.local/bin"

# ssh-agent

SSH_ENV="$HOME/.ssh/agent_environment"

function start_agent {
	/usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
	chmod 600 "${SSH_ENV}"
	. "${SSH_ENV}" > /dev/null
	/usr/bin/ssh-add;
}

if [ -f "${SSH_ENV}" ]; then
	. "${SSH_ENV}" > /dev/null
	ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
		start_agent;
	}
else
	start_agent;
fi

# man colors

export MANPAGER="less -R --use-color -Dd+r -Du+b"
export MANROFFOPT="-P -c"

# 42 Header conf

export MAIL="ivalimak@student.hive.fi"
