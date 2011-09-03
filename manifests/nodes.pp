node 'default' {
    #include sudo::base
}

node 'eric-workstation' inherits default {
    apt::ppa { "ppa:webupd8team/sublime-text-2": 
        notify => Package["sublime-text-2"]
    }
    package { "sublime-text-2":
        ensure => latest
    }

}
node 'obelix' inherits eric-workstation {} 

