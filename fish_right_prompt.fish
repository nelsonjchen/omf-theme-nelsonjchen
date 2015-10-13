function fish_right_prompt -d "Write out the right prompt"
	set -l last_status $status

	if test $last_status -ne 0
		set_color --bold red
		echo -ns $last_status ' :( '
		set_color normal
	end

	# tmux, screen title
	switch $TERM;
	case xterm'*' vte'*';
	printf '\033]0;['(prompt_pwd)']\007';
	case screen'*';
	printf '\033k['(prompt_pwd)']\033\\';
	end

	echo -ns (date "+%D")" - "(date "+%l:%M %p")
end
