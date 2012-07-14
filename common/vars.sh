# Set TERM to xterm-256color if not invoked under tmux
case "$TERM" in
    screen|screen-256color)
        ;;
    *)
        export TERM=xterm-256color;;
esac
