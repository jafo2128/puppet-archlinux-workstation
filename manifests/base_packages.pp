# Class: archlinux_workstation::base_packages
#
# Collection of base packages that we want installed on every system.
#
# Actions:
#   - ensure Packages are absent: lynx
#   - ensure Packages are present: links, lsb-release, dmidecode, ttf-dejavu,
#     vim, wget, bind-tools, net-tools, lsof, screen
#
class archlinux_workstation::base_packages {

  if ! defined(Class['archlinux_workstation']) {
    fail('You must include the base archlinux_workstation class before using any subclasses')
  }

  package {'links': ensure => present, }
  package {'lynx': ensure => absent, }
  package {'lsb-release': ensure => present, }
  package {'dmidecode': ensure => present, }
  package {'vim': ensure => present, }
  package {'ttf-dejavu': ensure => present, }
  package {'wget': ensure => present, }
  package {'bind-tools': ensure => present, }
  package {'net-tools': ensure => present, }
  package {'lsof': ensure => present, }
  package {'lsscsi': ensure => present, }
  package {'screen': ensure => present, }
}
