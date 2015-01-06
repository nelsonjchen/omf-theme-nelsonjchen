function __caret_color
	if [ $USER = "root" ]
	  echo -n "red"
	else
	  echo -n "magenta"
	end
end

function fish_prompt
	echo (set_color -o cyan)(whoami)(set_color normal)(set_color yellow)@(set_color -o blue)(hostname| cut -d . -f 1)(set_color normal):(pwd)
	echo -n (set_color (__caret_color))(__zsh_percent_hash)' '(set_color normal)
end

function fish_right_prompt -d "Write out the right prompt"
	date "+%m/%d/%y"
end

### Polyfills

## ZSH polyfills
# http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html

# It's like prompt_pwd, but not exactly.
function __zsh_percent_tilde
  echo -n "unimplemented"
end

# $ for luser, # for superuser
function __zsh_percent_hash
	if [ $USER = "root" ]
	  echo -n "#"
	else
	  echo -n "\$"
	end
end

## Oh-my-zsh polyfills
# https://github.com/robbyrussell/oh-my-zsh/blob/master/lib/git.zsh

function __omz_git_prompt_info
  echo -n "unimplemented"
end

