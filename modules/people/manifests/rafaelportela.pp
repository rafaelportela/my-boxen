class people::rafaelportela {

  # shows a message, to be sure this class was declared.
  notify { 'class people::rafaelportela declared': }

  # load the following class
  include people::rafaelportela::applications

  include osx::global::enable_standard_function_keys
  include osx::dock::autohide
  include osx::dock::clear_dock
  include osx::no_network_dsstores
  include osx::keyboard::capslock_to_control
  class { 'osx::global::key_repeat_delay':
    delay => 10
  }
  class { 'osx::global::key_repeat_rate':
    rate => 2
  }

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

  package { 'elixir':
    ensure => installed,
  }

  package { 'couchdb':
    ensure => 'installed',
  }

  package { 'mongodb':
    ensure => 'installed',
  }

  package { 'maven':
    ensure => 'installed'
  }

  package { 'gradle':
    ensure => 'installed'
  }

  package { 'awscli':
    ensure => 'installed',
  }
}
