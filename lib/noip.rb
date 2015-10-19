require 'noip/agent'
require 'noip/credentials'
require 'noip/remote_ip'
require 'noip/updater'
require 'noip/version'

module Noip

  def self.update
    Noip::Updater.new.update
  end

end
