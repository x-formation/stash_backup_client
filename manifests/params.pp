class stash_backup_client::params {
  $home_stash      = '/var/atlassian/application-data/stash'
  $version         = '1.8.2'
  $backup_user     = 'backup-stash'
  $backup_password = ''
  $backup_home     = '/backup'
  $installdir      = '/opt/x-formation'
  $url             = 'http://httpstore/puppet/stash'
  $minute          = '00'
  $hour            = '20'
  $date            = '*'
  $month           = '*'
  $weekday         = '*'
  
}
