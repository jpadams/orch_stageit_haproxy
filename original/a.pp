file { '/var/www/eights/index.html':
  ensure  => file,
  content => '<h1>original version of centos65a</h1>',
}
