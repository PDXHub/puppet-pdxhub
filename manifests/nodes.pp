node 'default' {
    #include sudo::base
}

node 'ankh' inherits default {
    include leif-ankh
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
node 'sojourner' inherits eric-workstation {} 

class leif-ankh {
    package { "openjdk-6-jdk": ensure => installed }
    package { "python-ply": ensure => installed }

    package { "maven2": ensure => installed }
    package { "subversion": ensure => installed }
    package { "unzip": ensure => installed }
    package { "zsh": ensure => installed }
    package { "tmux": ensure => installed }
    package { "apt-file": ensure => installed }
    package { "pxsl-tools": ensure => installed }
    package { "irb": ensure => installed }

    package { "rails": ensure => installed, provider=>gem}
    package { "sqlite3": ensure => installed }
    package { "libsqlite3-dev": ensure => installed }
    package { "ruby1.8-dev": ensure => installed }
    package { "unicorn": ensure => installed, provider=>gem}
    package { "sqlite3-ruby": ensure => installed, provider=>gem}

    package { "libxslt-dev": ensure => installed}
}
