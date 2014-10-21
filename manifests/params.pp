# Class ansible::params
#
# This class contains every parameter which will be used in this puppet module
# for setting up the ansible service
class ansible::params {
  $pkg_name     = 'ansible'
  $pkg_version  = 'installed'
  $conf_file    = '/etc/ansible/ansible.cfg'
  $remote_port  = '22'
}
