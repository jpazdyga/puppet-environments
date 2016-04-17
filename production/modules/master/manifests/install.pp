class master::install {

### Install required packages. Puppetserver to run the provisioning service and git to pull puppet code.
#
  package { "puppetserver":
    ensure => latest,
    provider => yum,
  }

  package { "git":
    ensure => latest,
    provider => yum,
  }

}
