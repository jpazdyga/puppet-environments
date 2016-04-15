class base::install ($min_memory_size=hiera('min_memory_size')) {

  augeas { "/etc/dgm.properties":
    changes => [
      "set 'min_memory_size' '$min_memory_size'",
    ],
  }

  file { "/etc/facter/":
    ensure => directory,
  }

  file { "/etc/facter/facts.d/":
    ensure => directory,
    require => File[ "/etc/facter/" ],
  }

  file { "/etc/facter/facts.d/environment.sh":
    source => "puppet:///modules/base/environment.sh",
    mode => 755,
  }

  file { "/etc/facter/facts.d/baseline.txt":
    source => "puppet:///modules/base/baseline.txt",
  }

  file { "/etc/facter/facts.d/role.txt":
    source => "puppet:///modules/base/role.txt",
  }

}
