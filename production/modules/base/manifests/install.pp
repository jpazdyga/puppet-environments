class base::install {

  file { "/etc/dgm.properties":
    ensure => present,
  }

  augeas { '/etc/dgm.properties':
    changes => 'set "min_memory_size" "256m"',
#    onlyif => "match min_memory_size not_include '256m' ",
    require => File["/etc/dgm.properties"], 
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
