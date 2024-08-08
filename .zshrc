# ~/.zshrc
autoload -Uz compinit promptinit
compinit
promptinit

# zkbd hash
typeset -g -A key

key[Home]="${terminfo[khome]}"
key[End]="${terminfo[kend]}"
key[Insert]="${terminfo[kich1]}"
key[Backspace]="${terminfo[kbs]}"
key[Delete]="${terminfo[kdch1]}"
key[Up]="${terminfo[kcuu1]}"
key[Down]="${terminfo[kcud1]}"
key[Left]="${terminfo[kcub1]}"
key[Right]="${terminfo[kcuf1]}"
key[PageUp]="${terminfo[kpp]}"
key[PageDown]="${terminfo[knp]}"
key[Shift-Tab]="${terminfo[kcbt]}"

bindkey -v

[[ -n "${key[Home]}"      ]] && bindkey -v -- "${key[Home]}"       beginning-of-line
[[ -n "${key[End]}"       ]] && bindkey -v -- "${key[End]}"        end-of-line
[[ -n "${key[Insert]}"    ]] && bindkey -v -- "${key[Insert]}"     overwrite-mode
[[ -n "${key[Backspace]}" ]] && bindkey -v -- "${key[Backspace]}"  backward-delete-char
[[ -n "${key[Delete]}"    ]] && bindkey -v -- "${key[Delete]}"     delete-char
[[ -n "${key[Up]}"        ]] && bindkey -v -- "${key[Up]}"         up-line-or-history
[[ -n "${key[Down]}"      ]] && bindkey -v -- "${key[Down]}"       down-line-or-history
[[ -n "${key[Left]}"      ]] && bindkey -v -- "${key[Left]}"       backward-char
[[ -n "${key[Right]}"     ]] && bindkey -v -- "${key[Right]}"      forward-char
[[ -n "${key[PageUp]}"    ]] && bindkey -v -- "${key[PageUp]}"     beginning-of-buffer-or-history
[[ -n "${key[PageDown]}"  ]] && bindkey -v -- "${key[PageDown]}"   end-of-buffer-or-history
[[ -n "${key[Shift-Tab]}" ]] && bindkey -v -- "${key[Shift-Tab]}"  reverse-menu-complete

if (( ${+terminfo[smkx]} && ${+terminfo[rmkx]} )); then
	autoload -Uz add-zle-hook-widget
	function zle_application_mode_start { echoti smkx }
	function zle_application_mode_stop { echoti rmkx }
	add-zle-hook-widget -Uz zle-line-init zle_application_mode_start
	add-zle-hook-widget -Uz zle-line-finish zle_application_mode_stop
fi

# Fuck your logs
alias startx='startx -logverbose -1'

# Important aliases
alias ls='ls --color=auto'
alias lsa='ls -alh'
alias src='source ~/.zshrc'
alias fmake='make -j 32'
alias dbmake='compiledb make'
alias remake='make fclean && fmake'
alias helgrind='valgrind --tool=helgrind'
alias rrr='rr /home/ilmu/.local/share/rr/latest-trace'
alias mkdir='mkdir -p'
alias cd..='cd ..'
alias clr='clear'
alias :q='exit'

# Dircolors
export LS_COLORS=`dircolors | head -n 1 | sed s/LS_COLORS=\'// | sed s/\'\;//`

# Profile
source ~/.zprofile

# PS
source ~/.zsh/zsh_ps

# Neovim
alias vim='nvim'
