module Noip
  class Credentials

    def initialize(username = nil, password = nil, host = nil)
      @username = username || ENV['NOIP_USERNAME']
      @password = password || ENV['NOIP_PASSWORD']
      @host     = host || ENV['NOIP_HOST']
    end

    attr_reader :username, :password, :host

  end
end
