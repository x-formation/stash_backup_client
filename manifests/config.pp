class stash_backup_client::config inherits stash_backup_client {

  file { "/usr/local/sbin/backup.sh":
    mode    => '0755',
    content => template('stash_backup_client/backup.sh.erb'),
  }

  file { "/backup":
    ensure => directory,
  }

 cron::job {
    'backup-stash':
      minute      => $minute,
      hour        => $hour,
      date        => $date,
      month       => $month,
      weekday     => $weekday,
      user        => 'root',
      command     => '/usr/local/sbin/backup.sh',
  }
}
