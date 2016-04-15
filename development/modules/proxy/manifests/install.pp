class proxy::install {

  $squid = [ "squid", "squid-sysvinit" ]

  package { $squid:
    ensure => latest,
  }

}
