# puppet-ansible module

This module is intented to use ansible as an orchestration tool within an existing puppet environment based on puppetdb. It relies on the epel repository which you have to manage yourselves.

Tested on a CentOS 6.5 machine using puppet 3.7.1, puppetdb 2.2 and ansible 1.7

## puppet

include ansible

class { 'ansible':
	puppetdb_host    => 'PUPPETDBHOST',
	puppetdb_port    => 'PUPPETDBPORT',
	puppet_inventory => true,
}

## /etc/ansible/hosts

Using the defaults, ansible will use the default installed static /etc/ansible/hosts file which you can manipulate yourself.

If on the other hand you want to use your hosts managed by puppet you could enable the puppet_inventory param on true so the /etc/ansible/hosts file will be replaced by a [dynamic inventory](https://github.com/visibilityspots/ansible-puppet-inventory) script based on your puppetdb service.

That way you can benefit of both services the nifty ansible to trigger services and the robust way of configuration management by puppet.
