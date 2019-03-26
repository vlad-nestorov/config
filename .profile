case $- in
  *i*)
    # Check that tmux exists, and that it's not already running. 
    if command -v tmux > /dev/null  && [ -z "$TMUX" ]; then
       exec tmux new -As default
    # Interactive session. Try switching to bash.
    elif [ -z "$BASH" ]; then # do nothing if running under bash already
      bash=$(command -v bash)
      if [ -x "$bash" ]; then
        export SHELL="$bash"
        exec "$bash"
      fi
    fi

esac