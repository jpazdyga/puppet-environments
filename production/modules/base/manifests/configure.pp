class base::configure ($min_memory_size=hiera('min_memory_size'), $max_memory_size=hiera('max_memory_size')) {

  file { "/etc/dgm.properties":
    ensure => present,
  } 
    
  augeas { "/etc/dgm.properties":
    context => "/files/etc/dgm.properties",
    incl => "/etc/dgm.properties",
    lens => "Shellvars.lns",
    changes => [
      "set 'min_memory_size' '$min_memory_size'",
      "set 'max_memory_size' '$max_memory_size'",
    ], 
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
