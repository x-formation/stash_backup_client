class stash_backup_client::install inherits stash_backup_client {

  wget::fetch { "${url}/stash-backup-distribution-${version}.zip":
    destination => "${installdir}/stash-backup-distribution-${version}.zip",
    timeout     => 0,
    verbose     => false,
  }
  ->
  exec { "unzip_stash-backup_client":
    command   => "unzip stash-backup-distribution-${version}.zip",
    creates   => "${installdir}/stash-backup-client-${version}",
    cwd       => $installdir,
    logoutput => "on_failure",
    path      => "/bin:/usr/bin",
  }
}

