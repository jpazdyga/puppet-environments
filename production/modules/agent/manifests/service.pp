class agent::service {

### TODO: This should be changed to local firewall setup instead of stopping it
#
  service { "firewalld":
    ensure => stopped,
  }

}
