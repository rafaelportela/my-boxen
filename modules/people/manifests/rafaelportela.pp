class people::rafaelportela {

  # shows a message, to be sure this class was declared.
  notify { 'class people::rafaelportela declared': }

  # load the following class
  include people::rafaelportela::applications

  include zsh
  include android::20
  include android::platform_tools
  include android::tools
  android::system_image { "sysimg-20": }

  package { 'Java8':
    ensure => installed,
    source => 'http://www.java.net/download/jdk8u20/archive/b23/binaries/jdk-8u20-ea-bin-b23-macosx-x86_64-15_jul_2014.dmg',
    provider => pkgdmg,
  }
  
}
