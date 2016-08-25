class skeleton {
File {
  ensure => file,
  owner => 'root',
  group => 'root',
  mode => '0644'
  }
  
file { 'skel':
  ensure => directory,
  path => '/etc/skel',
  }
  file  { 'bashrc':
    path => '/etc/skel/.bashrc ,
    source => 'puppet:///modules/skeleton/bashrc',
    }
# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi
# Uncomment the following line if you don't like systemctl's auto-pagin
g feature:
# export SYSTEMD_PAGER=
# User specific aliases and functions
    }
}
