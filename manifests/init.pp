# Class: ansible
#
# Initialization class for the ansible.us agent
class ansible (
  $pkg_name     = $ansible::params::pkg_name,
  $pkg_version  = $ansible::params::pkg_version,
  $conf_file    = $ansible::params::conf_file,
  $remote_port  = $ansible::params::remote_port,
) inherits ansible::params {

  include ansible::install
  include ansible::config

  Class['ansible::install'] ->
  Class['ansible::config']
}
