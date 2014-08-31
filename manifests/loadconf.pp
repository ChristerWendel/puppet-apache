# == Type: apache::loadconf
#
# Adds a configuration to the apache configuration
#
# === Parameters
# [implicit]
#   The name of the configuration

define apache::loadconf() {
  exec { "/usr/sbin/a2enconf ${name}" :
    creates => "/etc/apache2/conf.enabled/${name}.conf",
    notify  => Service['apache2'],
  }
}
