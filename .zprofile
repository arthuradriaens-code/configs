source ~/.config/.shortcuts
source ~/.config/.exports

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi

