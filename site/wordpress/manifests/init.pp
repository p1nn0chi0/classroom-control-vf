class { 'wordpress':
  wp_owner    => 'wordpress',
  wp_group    => 'wordpress',
  db_user     => 'wordpress',
  db_password => 'hvyH(S%t(\"0\"16',
}

class { 'wordpress':
  version => '3.4',
}

class { 'wordpress':
  install_dir => '/var/www/wordpress',
}

class { 'wordpress':
  wp_multisite   => true,
  wp_site_domain => 'blog.domain.com',
}

class { 'wordpress':
  wp_additional_config => 'foo/wp-config-extra.php.erb',
}
