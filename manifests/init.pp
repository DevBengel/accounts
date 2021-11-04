class accounts {

$rootgroup = $osfamily ? {
    'Debian'  => 'sudo',
    'RedHat'  => 'wheel',
    default   => warning('Diese Linuxversion unterstuetzen wir nicht.'),
  }

include accounts::groups

  user { 'autouser':
    ensure      => present,
    home        => '/home/autouser',
    shell       => '/bin/bash',
    managehome  => true,
    gid         => 'pipelineusers',
  }

}
