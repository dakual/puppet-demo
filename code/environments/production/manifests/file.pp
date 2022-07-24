class file {

    file { "/tmp/deneme.txt":
        ensure => "present",
        owner => "root",
        group => "root",
        mode => "644",
        content => "This is my first manifest to create a file in temp directory",
    } 

}
