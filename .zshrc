# If you come from bash you might have to change your $PATH.
#export PATH=$HOME/bin:/usr/local/bin:$PATH
#export EDITOR=vim
#export editor=geany
# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="minimal"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(ubuntu)


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=pt_BR.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
# export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#------------------------------
# History stuff
#------------------------------
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

#------------------------------
# Variables
#------------------------------
export BROWSER="firefox"
export EDITOR="vim"
export PATH="${PATH}:${HOME}/bin:${HOME}/.cabal/bin:${HOME}/.local/bin"
export GOPATH="$HOME/go"
export editor="geany"
export LANG="pt_BR.UTF-8"
export CHEATCOLORS=true
#-----------------------------
# Dircolors
#-----------------------------
LS_COLORS='rs=0:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:';
export LS_COLORS

#------------------------------
# Keybindings
#------------------------------
bindkey -v
typeset -g -A key
bindkey '^?' backward-delete-char
bindkey '^[[5~' up-line-or-history
bindkey '^[[3~' delete-char
bindkey '^[[6~' down-line-or-history
bindkey '^[[A' up-line-or-search
bindkey '^[[D' backward-char
bindkey '^[[B' down-line-or-search
bindkey '^[[C' forward-char
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

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
alias pacorf='sudo pacman -Rns $(pacman -Qtdq)'
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
#alias sl='tree -h -L 1'
alias sl='els --els-icons=fontawesome'
alias c=clear
alias rm='rm -v'
alias rmr='rm -r -v'
alias mv='mv -v'
alias cp='cp -v'
alias upzshrc="source ~/.zshrc"
alias zshrc='vim ~/.zshrc ; source ~/.zshrc'
alias neo='neofetch -s /home/xtreme/Imagens/screenshot/ --w3m /home/xtreme/Imagens/w3m/ai.png'
alias unistall='expac -HM "%011m\t%-20n\t%10d"$(comm -23 <(pacman -Qqen | sort) <(pacman -Qqg base base-devel | sort)) | sort -n'
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
alias checkupdatesAUR='cower -u'
#alias launch-mopidy='pkill mpd && mopidy &'
alias startx-bspwm='startx /usr/bin/bspwm'

#------------------------------
# Setopt stuff
#------------------------------

#Enabling self-correction:
setopt correct
setopt correct_all
export sprompt="$(print '%{\e[37m%}zsh: Corrigir para %S%r%s ? (n|y|e): %{\e[0m%}')"

#Allowing self cd (There is no need to use the command cd):
setopt auto_cd
setopt cdable_vars
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushd_silent

# Auto-complete with <TAB>
setopt auto_list
setopt auto_menu
setopt case_glob
setopt list_types
setopt glob_complete
setopt menu_complete
setopt complete_in_word
setopt complete_aliases
autoload -Uz compinit promptinit vcs_info
compinit
promptinit
autoload -U colors
colors


#------------------------------
# ShellFuncs
#------------------------------
# -- coloured manuals
man() {
  env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
    man "$@"
}

#compress file or folder

compress() {
    case "$1" in
       tar.bz2|.tar.bz2) tar cvjf "${2%%/}.tar.bz2" "${2%%/}/"  ;;
       tbz2|.tbz2)       tar cvjf "${2%%/}.tbz2" "${2%%/}/"     ;;
       tbz|.tbz)         tar cvjf "${2%%/}.tbz" "${2%%/}/"      ;;
       tar.xz)         tar cvJf "${2%%/}.tar.xz" "${2%%/}/"      ;;
       tar.gz|.tar.gz)   tar cvzf "${2%%/}.tar.gz" "${2%%/}/"   ;;
       tgz|.tgz)         tar cvjf "${2%%/}.tgz" "${2%%/}/"      ;;
       tar|.tar)         tar cvf  "${2%%/}.tar" "${2%%/}/"        ;;
       rar|.rar)         rar a "${2}.rar" "$2"            ;;
       zip|.zip)         zip -9 "${2}.zip" "$2"            ;;
       7z|.7z)         7z a "${2}.7z" "$2"            ;;
       lzo|.lzo)         lzop -v "$2"                ;;
       gz|.gz)         gzip -v "$2"                ;;
       bz2|.bz2)         bzip2 -v "$2"                ;;
       xz|.xz)         xz -v "$2"                    ;;
       lzma|.lzma)         lzma -v "$2"                ;;
           *)           echo "ac(): compress a file or directory."
            echo "Usage:   ac <archive type> <filename>"
            echo "Example: ac tar.bz2 PKGBUILD"
            echo "Please specify archive type and source."
            echo "Valid archive types are:"
            echo "tar.bz2, tar.gz, tar.gz, tar, bz2, gz, tbz2, tbz,"
            echo "tgz, lzo, rar, zip, 7z, xz and lzma." ;;
    esac
}

#decompress archive

decompress() {
   if [ -f "$1" ] ; then
       case "$1" in
           *.tar.bz2|*.tgz|*.tbz2|*.tbz) mkdir -v "$2" 2>/dev/null ; tar xvjf "$1" -C "$2" ;;
       *.tar.gz)             mkdir -v "$2" 2>/dev/null ; tar xvzf "$1" -C "$2" ;;
       *.tar.xz)             mkdir -v "$2" 2>/dev/null ; tar xvJf "$1" ;;
       *.tar)             mkdir -v "$2" 2>/dev/null ; tar xvf "$1"  -C "$2" ;;
       *.rar)             mkdir -v "$2" 2>/dev/null ; 7z x   "$1"     "$2" ;;
       *.zip)             mkdir -v "$2" 2>/dev/null ; unzip   "$1"  -d "$2" ;;
       *.7z)             mkdir -v "$2" 2>/dev/null ; 7z x    "$1"   -o"$2" ;;
       *.lzo)             mkdir -v "$2" 2>/dev/null ; lzop -d "$1"   -p"$2" ;;
       *.gz)             gunzip "$1"                       ;;
       *.bz2)             bunzip2 "$1"                       ;;
       *.Z)                 uncompress "$1"                       ;;
       *.xz|*.txz|*.lzma|*.tlz)     xz -d "$1"                           ;;
       *)
       esac
   else
                      echo "Sorry, '$2' could not be decompressed."
              echo "Usage: ad <archive> <destination>"
              echo "Example: ad PKGBUILD.tar.bz2 ."
              echo "Valid archive types are:"
              echo "tar.bz2, tar.gz, tar.xz, tar, bz2,"
              echo "gz, tbz2, tbz, tgz, lzo,"
              echo "rar, zip, 7z, xz and lzma"
   fi
}

#list compressed files

listcompress() { # list content of archive but don't unpack
    if [ -f "$1" ]; then
         case "$1" in
       *.tar.bz2|*.tbz2|*.tbz) tar -jtf "$1"     ;;
       *.tar.gz)                     tar -ztf "$1"     ;;
       *.tar|*.tgz|*.tar.xz)                 tar -tf "$1"     ;;
       *.gz)                 gzip -l "$1"     ;;
       *.rar)                 rar vb "$1"     ;;
       *.zip)                 unzip -l "$1"     ;;
       *.7z)                 7z l "$1"     ;;
       *.lzo)                 lzop -l "$1"     ;;
       *.xz|*.txz|*.lzma|*.tlz)      xz -l "$1"     ;;
         esac
    else
         echo "Sorry, '$1' is not a valid archive."
     echo "Valid archive types are:"
     echo "tar.bz2, tar.gz, tar.xz, tar, gz,"
     echo "tbz2, tbz, tgz, lzo, rar"
     echo "zip, 7z, xz and lzma"
    fi
}

#Listar diretórios
function c.() { builtin cd -- "$@" && { [ "$PS1" = "" ] || tree -h -L 1; }; }
function cd() { builtin cd -- "$@" && { [ "$PS1" = "" ] || els --els-icons=fontawesome; }; }
#els --els-icons=fontawesome
# Find file in current directory
function ff() {  find . -type f -iname '*'$*'*' -ls ; }
#pastebin
pbx () {
  curl -sF "c=@${1:--}" -w "%{redirect_url}" 'https://ptpb.pw/?r=1' -o /dev/stderr | xsel -l /dev/null -b
}
# myip - Find the external IP when connected to internet
function meuip (){
 lynx -dump -hiddenlinks=ignore -nolist http://checkip.dyndns.org:8245/ | awk '{
print $4}' | sed '/^$/d; s/^[ ]*//g; s/[ ]*$//g'
}
# Calculate real memory used (desconsider the cache)
function  memoria-livre(){
 echo "`free|grep Mem|awk '{printf(\"%.0f\",($3-($6+$7))/1000)}'` MiB";
}
# List erros in logs from the last system boot
function log-system(){ journalctl -p 3 -xb}
#Show only user processes.
function  psuser() {
 ps $@ -u $USER -o pid,%cpu,%mem,bsdtime,command ;
}
#Show top commands
alias topcommands='print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 10'

#------------------------------
# Window title
#------------------------------
case $TERM in
  termite|*xterm*|rxvt|rxvt-unicode|rxvt-256color|rxvt-unicode-256color|(dt|k|E)term)
    precmd () {
      vcs_info
      print -Pn "\e]0;[%n@%M][%~]%#\a"
    }
    preexec () { print -Pn "\e]0;[%n@%M][%~]%# ($1)\a" }
    ;;
  screen|screen-256color)
    precmd () {
      vcs_info
      print -Pn "\e]83;title \"$1\"\a"
      print -Pn "\e]0;$TERM - (%L) [%n@%M]%# [%~]\a"
    }
    preexec () {
      print -Pn "\e]83;title \"$1\"\a"
      print -Pn "\e]0;$TERM - (%L) [%n@%M]%# [%~] ($1)\a"
    }
    ;;
esac

# Not all servers have terminfo for rxvt-256color. :<
if [ "${TERM}" = 'rxvt-256color' ] && ! [ -f '/usr/share/terminfo/r/rxvt-256color' ] && ! [ -f '/lib/terminfo/r/rxvt-256color' ] && ! [ -f "${HOME}/.terminfo/r/rxvt-256color" ]; then
    export TERM='rxvt-unicode'
fi

confirm() {
    local answer
    echo -ne "zsh: sure you want to run '${YELLOW}$*${NC}' [yN]? "
    read -q answer
        echo
    if [[ "${answer}" =~ ^[Yy]$ ]]; then
        command "${@}"
    else
        return 1
    fi
}

confirm_wrapper() {
    if [ "$1" = '--root' ]; then
        local as_root='true'
        shift
    fi

    local prefix=''

    if [ "${as_root}" = 'true' ] && [ "${USER}" != 'root' ]; then
        prefix="sudo"
    fi
    confirm ${prefix} "$@"
}

#poweroff() { confirm_wrapper --root $0 "$@"; }
#reboot() { confirm_wrapper --root $0 "$@"; }
#hibernate() { confirm_wrapper --root $0 "$@"; }

if [[ "$TERM" == *rxvt* ]]; then
   exec fish
fi

#ZSH CACHE
ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh
