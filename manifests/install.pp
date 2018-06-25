# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include nginx::install
class nginx::install (
  String $ensure = $::nginx::ensure,
  String $package_name = $::nginx::package_name,
) {
  package {'install_nginx': 
    ensure => $ensure,
    name => $package_name,
  }  
}
