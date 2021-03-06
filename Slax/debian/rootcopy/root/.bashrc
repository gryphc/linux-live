# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

export EDITOR=mcedit
export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'

# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'

apt-get()
{
   if [ -e /var/cache/apt/pkgcache.bin ]; then
      /usr/bin/apt-get --no-install-recommends "$@"
   else
      /usr/bin/apt-get update
      /usr/bin/apt-get --no-install-recommends "$@"
   fi
}

apt()
{
   if [ -e /var/cache/apt/pkgcache.bin ]; then
      /usr/bin/apt --no-install-recommends "$@"
   else
      /usr/bin/apt update
      /usr/bin/apt --no-install-recommends "$@"
   fi
}
