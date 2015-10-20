require 'thor'

module Noip
  class Update < Thor
    option :username, :aliases => '-u', :type => :string, :required => true
    option :password, :aliases => '-p', :type => :string, :required => true
    option :host,     :aliases => '-h', :type => :string, :required => true

    desc "update", "Update the Dynamic DNS record at noip"

    long_desc <<-DESC
    `update` Update the Dynamic DNS record at noip.

    A simple utility for updating noip (https://www.noip.com/integrate/request)
    dynamic DNS records for when your router kinda shit.

    https://github.com/asellitt/noip
    DESC

    def update
      Noip.update(options[:username], options[:password], options[:host])
    end
  end
end
