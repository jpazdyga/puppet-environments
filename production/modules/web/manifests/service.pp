class web::service {

### Start the Apache server
#
  service { "httpd":
    ensure => running,
  }

}
