class db::service {

### Run the database service if rpms are in place
#
  service { "mariadb":
    ensure => running,
    require => Package[$dbrpm],
  }

}
