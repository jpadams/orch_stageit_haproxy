file_line { 'enable centos65b':
  path  => '/etc/haproxy/haproxy.cfg',
  match => 'server centos65b',
  line  => '  server centos65b 10.20.1.69:8888 check port 8888',
}
~>
service { 'haproxy':
  ensure => running,
}
