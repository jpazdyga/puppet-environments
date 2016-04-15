class proxy::service {

  service { "squid":
    ensure => running,
  }

}
