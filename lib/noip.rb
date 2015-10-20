require 'noip/agent'
require 'noip/credentials'
require 'noip/remote_ip'
require 'noip/updater'
require 'noip/version'

module Noip

  def self.update
    credentials = Noip::Credentials.new
    updater = Noip::Updater.new(credentials)

    updater.update
  end

end
