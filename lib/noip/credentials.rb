module Noip
  class Credentials
    def initialize(username = nil, password = nil)
      @username = username || ENV['NOIP_USERNAME']
      @password = password || ENV['NOIP_PASSWORD']
    end

    attr_reader :username, :password
  end
end
