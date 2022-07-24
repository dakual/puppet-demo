node default {
    notify { 'This node did not match any of the listed definitions': }
}

node 'puppet-agent-1' {

    include file
    include exec
    include service
    include add_user

    # class { 'mymodule': }

}


