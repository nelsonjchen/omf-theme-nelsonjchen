function fish_right_prompt -d "Write out the right prompt"
	set -l last_status $status

	if test $last_status -ne 0
		set_color --bold red
		echo -ns $last_status ' :( '
		set_color normal
	end

	echo -ns (date "+%D")" - "(date "+%l:%M %p")
end
