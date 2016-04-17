class agent::configure {

### Put puppet agent config file in place
#
  file { "/etc/puppet/puppet.conf":
    source => "puppet:///modules/agent/puppet.conf",
  }

### Put /etc/hosts file
#
  file { "/etc/hosts":
    source => "puppet:///modules/agent/hosts",
  }

}
