# Class: ansible
#
# Initialization class for the ansible.us agent
class ansible (
  $pkg_name         = $ansible::params::pkg_name,
  $pkg_version      = $ansible::params::pkg_version,
  $remote_port      = $ansible::params::remote_port,
  $puppetdb_host    = $ansible::params::puppetdb_host,
  $puppetdb_port    = $ansible::params::puppetdb_port,
  $domain           = $ansible::params::domain,
  $puppet_inventory = $ansible::params::puppet_inventory,
) inherits ansible::params {

  include ansible::install
  include ansible::config

  Class['ansible::install'] ->
  Class['ansible::config']
}
