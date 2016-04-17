class proxy::service {

### Start the Squid Proxy service
#
  service { "squid":
    ensure => running,
  }

}
