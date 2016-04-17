class db::install {

### Install required rpms
#
  $dbrpm = [ "mariadb-server", "mariadb-libs", "mariadb" ]

  package { $dbrpm:
    ensure => latest,
  }

}
