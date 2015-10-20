require 'noip/agent'
require 'noip/credentials'
require 'noip/remote_ip'
require 'noip/updater'
require 'noip/version'

module Noip

  def self.update(username, password, host)
    credentials = Noip::Credentials.new(username, password, host)
    updater = Noip::Updater.new(credentials)

    updater.update
  end

end
