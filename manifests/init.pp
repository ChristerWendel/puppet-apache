# == Class: apache
#
# A module to configure apache
#
# === Parameters
# ["version"]
#   The package version to install
#
# ["enable"]
#   Should the service be enabled during boot time?
#
# ["start"]
#   Should the service be started by Puppet

class apache (
  $version = 'present',
  $enable = true,
  $start = true
  )  {
    class{'apache::install': } ~>
    class{'apache::service': } ->
    Class['apache']
  }
