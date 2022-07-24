class add_user {

  # add a user, don't create a home directory
  user { 'test1':
    ensure => 'present',
  }

  # add user, create homedir and set a password
  user { 'test2':
    ensure     => 'present',
    comment    => 'Hello I am test2',
    managehome => true,
    password   => '$6$LD5..snip...gNY1',
  }

}
