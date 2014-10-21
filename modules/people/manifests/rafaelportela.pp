class people::rafaelportela {

  # shows a message, to be sure this class was declared.
  notify { 'class people::rafaelportela declared': }

  # load the following class
  include people::rafaelportela::applications

  include zsh

  include iterm2::dev
  include iterm2::colors::solarized_light

  include java

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
