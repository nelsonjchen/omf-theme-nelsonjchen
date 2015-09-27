function fish_prompt
	set user (set_color --bold cyan)(whoami)(set_color normal)

	set machine (set_color --bold blue)(hostname| cut -d . -f 1)(set_color normal)

	set -l realhome ~
	set directory (set_color --bold green)(echo $PWD | sed -e "s|^$realhome|~|")(set_color normal)

	set -g __fish_git_prompt_show_informative_status 'yes'
	set -g __fish_git_prompt_showcolorhints 'yes'
	set color_bold_red (set_color --bold red)
	set color_bold_yellow (set_color --bold yellow)
	set color_bold_cyan (set_color --bold cyan)
	set color_reset (set_color normal)
	set -g __fish_git_prompt_char_dirtystate "$color_bold_red±$color_reset"
	set -g __fish_git_prompt_char_cleanstate "$color_bold_red♥$color_reset"
	set -g __fish_git_prompt_char_stagedstate "$color_bold_yellow●$color_reset"
	set -g __fish_git_prompt_char_stagedstate "$color_bold_cyan…$color_reset"
	set -g __fish_git_prompt_char_stateseparator ' '
	# I have *no* idea why this works. Maybe set_color just ignores the second bold?
	set -g __fish_git_prompt_color_branch "--bold" "--bold" "yellow"
	set color_bold_magenta (set_color --bold magenta)
	set git (__fish_git_prompt "$color_bold_magenta^$color_reset%s")

	echo -s $user (set_color yellow)'@' $machine ':' $directory $git

	if [ $USER = "root" ]
		set caret (set_color red ) "#"
	else
		set caret (set_color magenta) "\$"
	end

	echo -s $caret ' '(set_color normal)
end
