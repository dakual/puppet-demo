class exec {

    # Executing Programs
    exec { 'echo-hello-world':
        path      => ['/bin'],
        cwd       => '/tmp',
        command   => 'echo "Hello world!" > testfile.txt',
        creates   => '/tmp/testfile.txt',
        returns   => [0],
        logoutput => on_failure,
    }

}
