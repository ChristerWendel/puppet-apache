# == Class: apache::configure
#
# Configures apache
class apache::configure {
  @file { '/etc/logstash/conf.d/apache.conf':
    ensure => present,
    owner  => 'logstash',
    group  => 'logstash',
    mode   => '0644',
    source => 'puppet:///modules/apache/logstash.conf',
    tag    => [logstash],
  }
}
