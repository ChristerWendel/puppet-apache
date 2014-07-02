# == Type: apache::loadmodule
#
# Adds a module to the apache configuration
#
# === Parameters
# [implicit]
#   The name of the module

define apache::loadmodule() {
  exec { "/usr/sbin/a2enmod ${name}" :
    unless => "/bin/readlink -e /etc/apache2/mods-enabled/${name}.load",
    notify => Service['apache2'],
  }
}
