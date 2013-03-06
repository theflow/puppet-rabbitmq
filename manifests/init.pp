class rabbitmq {
  include rabbitmq::config

  file { '/Library/LaunchDaemons/dev.rabbitmq.plist':
    content => template('rabbitmq/dev.rabbitmq.plist.erb'),
    group   => 'wheel',
    notify  => Service['dev.rabbitmq'],
    owner   => 'root'
  }

  package { "rabbitmq":
    notify => Service["dev.rabbitmq"]
  }

  service { "dev.rabbitmq":
    ensure => running
  }
}
