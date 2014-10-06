class stash_backup_client ( 
  $version         = $stash_backup_client::params::version,
  $stash_home      = $stash_backup_client::stash_home, 
  $backup_user     = $stash_backup_client::params::backup_user, 
  $backup_password = $stash_backup_client::params::backup_password, 
  $backup_home     = $stash_backup_client::params::backup_home, 
  $installdir      = $stash_backup_client::params::installdir,
  $url             = $stash_backup_client::params::url,
  $minute          = $stash_backup_client::params::minute,
  $hour            = $stash_backup_client::params::hour,
  $date            = $stash_backup_client::params::date,
  $month           = $stash_backup_client::params::month,
  $weekday         = $stash_backup_client::params::weekday,

) inherits stash_backup_client::params {

  contain stash_backup_client::install
  contain stash_backup_client::config

  Class['stash_backup_client::install'] ->
  Class['stash_backup_client::config']

}
