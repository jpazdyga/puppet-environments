class web::install {

### install php and httpd rpm packages
#
  $webrpm = [ "php", "php-mysqlnd", "httpd" ]

  package { $webrpm: 
    ensure => latest,
  }

}
