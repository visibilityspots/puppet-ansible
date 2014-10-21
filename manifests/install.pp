# Class: ansible::install
#
# Installation of the ansible package
class ansible::install {
  package { $ansible::pkg_name :
    ensure  => $ansible::pkg_version
  }
}
