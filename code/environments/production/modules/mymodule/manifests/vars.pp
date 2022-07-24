class mymodule::vars {
  
    $username = 'username-mymodule'
    $password = 'password-mymodule'

    # Show notification
    notify { 'message':
      message => "mymodule::vars"
    }
}
