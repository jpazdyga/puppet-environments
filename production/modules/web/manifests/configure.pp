class web::configure ($apache_listen_port=hiera('apache_listen_port')) {

  augeas { "/etc/httpd/conf/httpd.conf":
    context => "/files/etc/httpd/conf/httpd.conf",
    changes => [
      "set /files/etc/httpd/conf/httpd.conf/directive 'Listen'",
      "set /files/etc/httpd/conf/httpd.conf/*[self::directive="Listen"]/arg '$apache_listen_port'",
    ],
  }

}
