node default {
  file { '/root/README':
    ensure  => file,
    content => 'This is a readme',
    owner   => 'root',
  }
}
node 'master' {
  include role::master_server
  include role: dockeragent
}

node /^web/ {
  include role::app_server
}
node /^db/ {
  include role::db_server
}
