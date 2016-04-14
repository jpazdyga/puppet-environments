class base::install {

  file { "/etc/hosts":
    content => template('base/hosts.erb'),
    owner   => root,
    group   => root,
    mode    => 644,
  }

  file { "/etc/facter/facts.d/":
    ensure => directory,
  }

  file { "/etc/facter/facts.d/environment.sh":
    source => "puppet:///modules/base/environment.sh",
    mode = 755,
  }

  file { "/etc/facter/facts.d/baseline.txt":
    source => "puppet:///modules/base/baseline.txt",
  }

  file { "/etc/facter/facts.d/role.txt":
    content => template('base/role.txt.erb'),
  }  

}
