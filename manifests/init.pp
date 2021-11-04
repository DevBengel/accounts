class accounts {

  user { 'autouser':
    ensure      => present,
    home        => '/home/autouser',
    shell       => '/bin/bash',
    managehome  => true,
    gid         => 'pipelineusers',
  }

}
