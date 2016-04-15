class base::install ($min_memory_size=hiera('min_memory_size'), $max_memory_size=hiera('max_memory_size')) {

  exec { "install-selinux":
    path => "/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/vagrant/.local/bin:/home/vagrant/bin",
    command => '/usr/bin/puppet module install spiette/selinux',
    creates => "/etc/puppet/modules/selinux",
  }

}
