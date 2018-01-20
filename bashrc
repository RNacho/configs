#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

PATH=$PATH:/root/.gem/ruby/2.4.0/bin:/home/ldv/.gem/ruby/2.4.0/bin:/home/ldv/.gem/ruby/2.5.0/bin
alias computosvpn='sudo su -c "cd /home/ldv/misvpns; openvpn AccesoLinea16-10y32-client.conf"'
alias ciiissh='ssh root@172.16.32.248'
alias compilarCGTK='export PKG_CONFIG_PATH=; gcc $(pkg-config --cflags --libs gtk+-3.0) -Wall -Werror -Wextra -pedantic -pedantic-errors -std=c11'
alias compilarWINCGTK='export PKG_CONFIG_PATH=/home/ldv/installs/elgtk/lib/pkgconfig; x86_64-w64-mingw32-gcc $(pkg-config --cflags --libs gtk+-3.0) -Wall -Werror -Wextra -pedantic -pedantic-errors -std=c11'
alias checkearCkernel='/home/ldv/installs/cpl/checkpatch.pl --file --no-tree'
alias miwifi='sudo ip link set enp0s20f0u1 up; sudo dhcpcd'
alias startsolo='startx $(which openbox-session)'
alias doblepantalla='xrandr --output eDP1 --auto --output HDMI2 --auto --right-of eDP1'
alias simplepantalla='xrandr --output eDP1 --auto --output HDMI2 --auto --same-as eDP1'
alias startpantalla='startx $(which twm) -- -listen tcp -ac'
alias pantallas='startx $(which openbox-session) -- $(which Xdmx) :1 -display snsv:0 -display argoC:0 -display g460:0 +xinerama -ignorebadfontpaths -input snsv:0 -norender -noglxproxy'
alias 2pantallas='startx $(which openbox-session) -- $(which Xdmx) :1 -display snsv:0 -display argoC:0 +xinerama -ignorebadfontpaths -input snsv:0'
monitorear(){
sudo su -c 'DISPLAY=g460:0 terminator --maximise --command="tmux new-session iftop\; split-window -v htop\; attach"'
}
verpdf(){
	DISPLAY=argoc:0 okular $1
}
verpresentacion(){
	DISPLAY=g460:0 okular $1
}
