class people::rafaelportela::applications {
  notify { 'loading people::rafaelportela::application': }
  include chrome
  include alfred
}
