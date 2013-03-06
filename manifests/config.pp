class rabbitmq::config {
  require boxen::config

  $executable = "${boxen::config::home}/homebrew/opt/rabbitmq/sbin/rabbitmq-server"
  $conf_file = "${boxen::config::home}/homebrew/etc/rabbitmq/rabbitmq-env.conf"
  $path = "${boxen::config::home}/homebrew/bin"
  $port = 15672
}