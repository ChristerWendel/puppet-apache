# == Class: apache::service
#
# Controls the apache service
class apache::service {
  $ensure = $apache::start ? {true => running, default => stopped}

  service { 'apache2':
    ensure => $ensure,
    enable => $apache::enable,
  }
}
