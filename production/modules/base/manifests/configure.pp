class base::configure {

  file { "/etc/facter/":
    ensure => directory,
  } 
  
  file { "/etc/facter/facts.d/":
    ensure => directory,
    require => File[ "/etc/facter/" ],
  } 
 
### This is for dynamic node tagging, we are using static values to assign hosts to environments
# 
#  file { "/etc/facter/facts.d/environment.sh":
#    source => "puppet:///modules/base/environment.sh",
#    mode => 755,
#  }

  file { "/etc/facter/facts.d/environment.txt":
    source => "puppet:///modules/base/environment.txt",
    replace => "no",
  }

  file { "/etc/facter/facts.d/baseline.txt":
    source => "puppet:///modules/base/baseline.txt",
    replace => "no",
  }

### This should be done by case and content to correctly bootstrap the value. But for now, it's hardcoded, so leaving as is without overwriting.
#
  file { "/etc/facter/facts.d/role.txt":
    source => "puppet:///modules/base/role.txt",
    replace => "no",
  }

}
