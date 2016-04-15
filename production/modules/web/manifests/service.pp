class web::service {

  service { "httpd":
    ensure => running,
    require => Class["selinux"],
  }

}
