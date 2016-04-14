class base::install {

  file { "/etc/hosts":
    content => template('base/hosts.erb'),
    owner   => root,
    group   => root,
    mode    => 644,
  }

}
