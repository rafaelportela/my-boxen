class people::rafaelportela {

  # shows a message, to be sure this class was declared.
  notify { 'class people::rafaelportela declared': }

  # load the following class
  include people::rafaelportela::applications

  include zsh

  include iterm2::dev
  include iterm2::colors::solarized_light

  include java

  include android::19
  include android::sdk
  include android::tools
  include android::platform_tools
  android::build_tools { '19.1.0': }
  android::system_image { 'sysimg-19': }
  android::extra { 'extra-google-android_support_repository': }
  android::extra { 'extra-google-android_support_library': }

  package { 'scala':
    ensure => installed,
  }

  package { 'sbt':
    ensure => installed,
    require => Package['scala'],
  }

  package { 'couchdb':
    ensure => 'installed',
  }

  package { 'mongodb':
    ensure => 'installed',
  }

  package { 'gradle':
    ensure => 'installed'
  }

  package { 'awscli':
    ensure => 'installed',
  }
}
