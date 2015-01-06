function __caret

end

function fish_prompt
	echo -s (set_color -o cyan)(whoami)@(hostname)
	echo '>'
end

function fish_right_prompt -d "Write out the right prompt"
	date "+%m/%d/%y"
end
