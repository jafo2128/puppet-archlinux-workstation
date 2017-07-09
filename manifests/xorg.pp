# == Class: archlinux_workstation::xorg
#
# Install packages required for xorg X server, as well as some additional
# packages.
#
# Note - @TODO - currently this just installs the default "xf86-video-vesa" driver.
# Need to write a fact to find video cards and choose the correct driver,
# per [Driver Installation](https://wiki.archlinux.org/index.php/Xorg#Driver_installation),
# or expose this option to the user.
#
# === Actions:
#   - Install X server required packages xorg-server, xorg-xinit and mesa.
#   - Install xorg-apps package group
#
class archlinux_workstation::xorg {

  if ! defined(Class['archlinux_workstation']) {
    fail('You must include the base archlinux_workstation class before using any subclasses')
  }

  $xorg_packages = ['xorg-server',
                    'xorg-apps',
                    'xorg-xinit',
                    'mesa',
                    'xf86-video-vesa',
                    # we need xterm for 'startx'
                    'xterm']

  package {$xorg_packages:
    ensure => present,
  }

}
