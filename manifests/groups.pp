class accounts::groups {

  group { 'pipelineusers':
    ensure  => present,
  }

}
