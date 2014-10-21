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
      mode    => '0655',
      replace => true,
      content => template('ansible/puppetdb.sh.erb'),
    }

    file { '/etc/ansible/environments':
      ensure => 'directory',
    }

    file { '/etc/ansible/environments/development':
      content => template('ansible/environments/development.erb'),
      require => File['/etc/ansible/environments']
    }
    file { '/etc/ansible/environments/production':
      content => template('ansible/environments/production.erb'),
      require => File['/etc/ansible/environments']
    }
  }
}
