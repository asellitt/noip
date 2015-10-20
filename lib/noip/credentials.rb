module Noip
  class Credentials

    def initialize(username, password, host)
      @username = username
      @password = password
      @host     = host
    end

    attr_reader :username, :password, :host

  end
end
