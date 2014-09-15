winswitch_repo:
  pkgrepo.managed:
    - humanname: Winswitch (Xpra)
    - name: deb http://winswitch.org/ trusty main
    - file: /etc/apt/sources.list.d/winswitch.list
    - dist: trusty
    - key_url: http://winswitch.org/gpg.asc
    - require_in:
        - pkg: xpra

# you need to start xpra manually on the server:
# xpra start :100 --start-child=xterm
# and then you may connect over ssh:
# xpra attach ssh:HOSTNAME
xpra:
  pkg.installed

xterm:
  pkg.installed