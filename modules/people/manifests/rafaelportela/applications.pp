class people::rafaelportela::applications {
  notify { 'loading people::rafaelportela::application': }
  include chrome
  include alfred
  include evernote

  class { 'intellij':
    edition => 'ultimate',
    version => '13.1.5',
  }
}
