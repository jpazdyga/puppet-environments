class web::configure {

  $apache_listen_port = 80

### Set apache to listen on the port specified in hiera.
#
  augeas { "/etc/httpd/conf/httpd.conf":
    context => "/files/etc/httpd/conf/httpd.conf",
    changes => [
      "set directive[.='Listen'] 'Listen'",
      "set directive[.='Listen']/arg '$apache_listen_port'",
    ],
    notify => Service[ "httpd" ],
  }

}
