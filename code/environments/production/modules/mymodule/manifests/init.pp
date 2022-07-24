class mymodule {

    # Load all variables
    class { 'mymodule::vars': }

    # Show notification
    notify { 'greeting':
      message => "mymodule::${mymodule::vars::username}@${mymodule::vars::password}"
    }

}
