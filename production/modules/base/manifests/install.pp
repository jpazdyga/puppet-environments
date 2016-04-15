class base::install {

  exec { "install-selinux":
    path => "/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/vagrant/.local/bin:/home/vagrant/bin",
    command => '/usr/bin/puppet module install spiette/selinux',
    creates => "/etc/puppet/modules/selinux",
  }

}
