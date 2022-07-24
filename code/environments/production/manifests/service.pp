class service {

  service { 'cron':
    ensure => 'running',
  }

}
