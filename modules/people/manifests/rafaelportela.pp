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

  include iterm2::dev
  include iterm2::colors::solarized_light

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
}
