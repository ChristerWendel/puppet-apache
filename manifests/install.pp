# == Class: apache::install
#
# Installs apache2
class apache::install {
  package { 'apache2':
    ensure => $apache::version,
  }
}
