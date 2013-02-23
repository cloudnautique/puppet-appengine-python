class appengine_python::python {
  case $::operatingsystem {
    "ubuntu": {
      $package_list = [ 'python2.7', 'python-setuptools', 'python-pip' ]
    } 
    default: {
      fail("Only supporting Ubuntu right now")
    }
  }

  package { $package_list:
    ensure => installed
  }
}
