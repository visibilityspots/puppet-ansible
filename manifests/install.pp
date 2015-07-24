# Class: ansible::install
#
# Installation of the ansible package
class ansible::install {
  package { $ansible::pkg_name :
    ensure  => $ansible::pkg_version
  }

  if !defined(Package['python-pip']) {
      package { 'python-pip':
        ensure => present,
      }
    }

    if !defined(Package['pypuppetdb']) {
      package { 'pypuppetdb':
        ensure   => present,
        provider => 'pip',
        require  => Package['python-pip'],
      }
    }
}
