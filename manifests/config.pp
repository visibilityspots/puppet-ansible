# Class: ansible::config
#
# Class which configures the ansible agent service
class ansible::config {
  file { '/etc/ansible/ansible.cfg':
    owner   => 'root',
    group   => 'root',
    replace => true,
    content => template('ansible/ansible.cfg.erb'),
  }

  if $ansible::puppet_inventory {
    file { '/etc/ansible/hosts':
      mode    => '0755',
      replace => true,
      content => template('ansible/inventory.py.erb'),
    }
  }
}
