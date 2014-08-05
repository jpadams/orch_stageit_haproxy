file_line { 'disable centos65a':
  path  => '/etc/haproxy/haproxy.cfg',
  match => 'server centos65a',
  line  => '  #server centos65a 10.20.1.68:8888 check port 8888',
}
~>
service { 'haproxy':
  ensure => running,
}
