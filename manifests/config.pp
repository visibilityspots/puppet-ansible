# Class: ansible::config
#
# Class which configures the ansible agent service
class ansible::config {
  file { $ansible::conf_file :
    owner   => 'root',
    group   => 'root',
    replace => true,
    content => template('ansible/ansible.cfg.erb'),
  }
}
