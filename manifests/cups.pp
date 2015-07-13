# == Class: archlinux_workstation::cups
#
# Install CUPS printing
#
# === Actions:
#   - Install cups and required/related packages
#   - Run cups service
#
class archlinux_workstation::cups {

  $cups_packages = ['libcups',
                    'cups',
                    'cups-filters',
                    'ghostscript',
                    'gsfonts',
                    'gutenprint',
                    'foomatic-db',
                    'foomatic-db-engine',
                    'foomatic-db-nonfree',
                    'hplip',
                    'cups-pdf'
                    ]

  package {$cups_packages:
    ensure => present,
  }

  service {'cups':
    ensure  => running,
    enable  => true,
    require => Package['cups'],
  }

}

