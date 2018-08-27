 # Start X at login
if status is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- -keeptty
    end
end

  #------------------------------
  # Alias stuff
  #------------------------------
  alias ls="ls --color -F"
  alias ll="ls --color -lh"
  alias spm="sudo pacman"
  alias gr="gvim --remote-silent"
  alias vr="vim --remote-silent"

  #------------------------------
  # Alias pacman
  #------------------------------

  alias pac='sudo pacman -S'
  alias pacR='sudo pacman -R'
  alias pacRdd='sudo pacman -Rdd'
  alias pacSy='sudo pacman -Sy'
  alias pacSyu='sudo pacman -Syu'
  alias pacS='sudo pacman -Ss'
  alias pacsearch="pacman -Sl | cut -d' ' -f2 | grep "
  alias pacQUERY='sudo pacman -Qs'
  alias pkglist="comm -13 <(pacman -Qmq | sort) <(pacman -Qqe | sort) > pkglist"

  #------------------------------
  # Alias pacaur
  #------------------------------

  alias AURinstall='trizen -S'
  #alias AURinstallpkg='pacaur -U'
  alias AURuninstall='trizen -R'
  alias AURupgrade='trizen -Syu'
  alias AURsearch='trizen -s'
  alias AURinfo='trizen -i'
  alias AURallinstalled='trizen -Q'
  alias AURinstalledquery='trizen -Q | grep'
  alias AURpkgComments='trizen -C'

  #------------------------------
  # Alias dia a dia
  #------------------------------

  alias google='ping -c 3 www.google.com.br'
  alias uol='ping -c 3 www.uol.com.br'
  #colocar cd automaticmente
  #shopt -s autocd
  #diretorios em arvores
  alias s.='tree -h -L 1'
  alias sl='els --els-icons=fontawesome'
  alias sl='ls'
  alias c=clear
  alias rm='rm -v'
  alias rmr='rm -r -v'
  alias mv='mv -v'
  alias cp='cp -v'
  alias upfish="source ~/.config/fish/config.fish"
  alias fishconfig='vim ~/.config/fish/config.fish ; source ~/.config/fish/config.fish'
  alias neo='neofetch --crop_mode fit --w3m /home/xtreme/Imagens/w3m/ai.png'
 # alias unistall='expac -HM "%011m\t%-20n\t%10d"$(comm -23 <(pacman -Qqen | sort) <(pacman -Qqg base base-devel   | sort)) | sort -n'
  alias autostart='sudo vim /home/xtreme/.config/openbox/autostart'
  alias unlaunch='sudo killall polybar'
  alias senable='sudo systemctl enable'
  alias sdisable='sudo systemctl disable'
  alias srestart='sudo systemctl restart'
  alias sstatus='sudo systemctl status'
  alias sstop='sudo systemctl stop'
  alias sstart='sudo systemctl start'
  alias service='systemctl list-unit-files | grep enable'
  alias serviceoff='systemctl list-unit-files | grep disable'
  alias servicerunnig='systemctl list-units --state=running'
  alias pssearch='ps ax | grep'
  alias matar='killall -9'
  alias destruir='sudo killall -9'
  alias grepzsh='cat ~/.zshrc | grep'
  alias kdcache='cd /var/cache/pacman/pkg/'
  alias cursorinstall='find /usr/share/icons ~/.icons -type d -name "cursors"'
  alias startx-openbox='startx /bin/openbox-session'
  alias startx-i3wm='startx /bin/i3'
  alias startx-jwm='startx /bin/jwm'
  alias neofetch2="neofetch \
  --config off \
  --block_range 1 8 \
  --bold off \
  --uptime_shorthand on \
  --gtk_shorthand on \
  --colors 4 1 8 8 8 7 \
  "
  alias torrentdow='transmission-daemon'
  alias torrentview='watch -n2 transmission-remote -l'
  alias killxorg='pkill -15 Xorg'
  alias terminar='pkill -15'
  alias pt-en='trans -l pt -t en'
  alias en-pt='trans -l en -t pt'
  alias internet='nm-applet'
  alias monitorar-portas-todas='netstat -tunap'
  alias poweroff='systemctl poweroff'
  alias reboot='systemctl reboot'
  alias icones-root-pasta='cd /usr/share/icons/'
  alias icones-user='cd ~/.icons'
  alias atalhos-root='cd /usr/share/applications/'
  alias atalhos-user='cd /home/xtreme/.local/share/applications/'
  alias monitorar-portas-nomes=' lsof -i TCP'
  alias monitorar-portas='lsof -n -i TCP'
  alias monitorar-portas-view='ss | grep tcp'
  alias checkupdatesAUR='cower -u 2>/dev/null'
  #alias launch-mopidy='pkill mpd && mopidy &'
  alias startx-bswm='startx /usr/bin/bspwm'
  # Set this options in your config.fish (if you want to :])
  set -g theme_display_user yes
  set -g theme_hide_hostname yes

