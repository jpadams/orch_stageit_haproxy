file { '/var/www/eights/index.html':
  ensure  => file,
  content => '<h1>upgraded version of centos65b</h1>',
}
