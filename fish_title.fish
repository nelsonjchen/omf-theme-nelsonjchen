function fish_title
  # Customize the title bar of the terminal window.
  # This does not affect tmux. Look at fish_right_prompt for what actually
  # affects it.
  echo '['(prompt_pwd)']'
end
