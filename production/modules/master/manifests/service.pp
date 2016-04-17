class master::service {

### Start the puppet server
#
  service { "puppetserver":
    ensure => running,
    require => Exec["puppet-nonca-master"],
  }

### TODO: This should be changed to local firewall setup instead of stopping it
#
  service { "firewalld":
    ensure => stopped,
  }

}
