##----------------------------------------------------------------------------##
## Launch dbus
##----------------------------------------------------------------------------##

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi
##----------------------------------------------------------------------------##
## Update XDefaults
##----------------------------------------------------------------------------##

[[ -f ~/.Xdefaults ]] && xrdb -merge "${HOME}/.Xdefaults"


##----------------------------------------------------------------------------##
## General settings
##----------------------------------------------------------------------------##
#x cursor
xsetroot -cursor_name left_ptr&

#typematic delay/ rate
xset r rate 200 20

#no bell
xset b off

#font config
xset +fp ~/.local/share/fonts
xset +fp /usr/share/fonts/local
xset +fp /usr/share/fonts/ttf
xset fp rehash

# set monitor to sleep
xset s 607000 60000
##----------------------------------------------------------------------------------------------------------------------##
dwm-statusbar &
hsetroot -fill /home/xtreme/Imagens/walpaper/o2814929.jpg
#feh --bg-scale "$HOME/Imagens/walpaper/094268.jpg" &

## Autostart programs + scripts
##----------------------------------------------------------------------------------------------------------------------##
# Here jwm is kept as default
session=${1:-dwm}

case $session in
  i3|i3wm           ) exec i3;;
  openbox           ) exec openbox-session;;
  jwm               ) exec jwm;;
  dwm               ) exec dwm;;
   # No known session, try to run it as command
  bspwm             ) exec bspwm;;
esac

#_start_session() {
#  session=${1:-i3wm}
#  case $session in
#      i3wm              ) exec i3;;
#      openbox           ) exec openbox-session;;
#      xfce4             ) exec startxfce4;;
#      # No known session, try to run it as command
#      *) exec "$1";;
#  esac
#}
#_start_session "$@"

#feh --bg-scale "$HOME/Imagens/walpaper/o132781.jpg"

#xrdb -load $HOME/.Xresources
#xsetroot -solid black &
#xbiff -geometry -430+5 &
#oclock -geometry 75x75-0-0 &
#xload -geometry -80-0 &
#xterm -geometry +0+60 -ls &
#xterm -geometry +0-100 &
#xconsole -geometry -0+0 -fn 5x7 &


