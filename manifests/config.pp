# == Class: ulimit::config
#
class ulimit::config {
  File {
    group => $::ulimit::params::config_group,
    owner => $::ulimit::params::config_user,
  }

  file { $::ulimit::config_dir:
    ensure  => directory,
    recurse => true,
    purge   => $::ulimit::params::purge,
  }
}

