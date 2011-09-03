#import "users"
import "nodes"

Exec { path => "/usr/local/bin:/usr/bin:/usr/sbin/:/bin:/sbin" }

Package {
    provider => $operatingsystem ? {
        debian => aptitude,
        ubuntu => aptitude,
        redhat => up2date
    }
}
