class stash_backup_client::install inherits stash_backup_client {

  archive { "stash-backup-distribution-${version}":
    ensure    => present,
    url       => "${url}/stash-backup-distribution-${version}.zip",
    target    => "$installdir",
    extension => "zip",
  }
}

