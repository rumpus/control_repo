class profile::base {
  user {'admin':
    ensure => present,
  }
  include proile::ssh_server
}
