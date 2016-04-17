class proxy::install {

### Install squid rpm
#
  $squid = [ "squid", "squid-sysvinit" ]

  package { $squid:
    ensure => latest,
  }

}
