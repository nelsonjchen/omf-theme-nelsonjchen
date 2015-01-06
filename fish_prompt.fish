function __caret_color
	if [ $USER = "root" ]
	  echo -n "red"
	else
	  echo -n "magenta"
	end
end


function fish_prompt
	echo (set_color -o cyan)(whoami)(set_color normal)(set_color yellow)@(set_color -o blue)(hostname| cut -d . -f 1)(set_color normal):
	echo -n (set_color (__caret_color))'# '(set_color normal)
end

function fish_right_prompt -d "Write out the right prompt"
	date "+%m/%d/%y"
end
