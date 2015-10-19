module Noip
  class RemoteIp

    def address
      @address ||= fetch_remote_address
    end

  private

    def fetch_remote_address
      remote_ip = Net::HTTP.get(resolver)
    end

    def resolver
      URI('http://whatismyip.akamai.com')
    end

  end
end
