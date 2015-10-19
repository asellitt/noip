module Noip
  class Updater

    def initialize
      initialize_http_request
    end

    def update
      @response ||= http.request(request)
    end

  private

    attr_reader :http, :request, :response

    def initialize_http_request
      @http = Net::HTTP.new('dynupdate.no-ip.com')

      @request = Net::HTTP::Get.new(
        "/nic/update?hostname=#{credentials.host}&ip=#{remote_ip.address}",
        { 'User-Agent' => agent.user_agent }
      )
      @request.basic_auth(
        credentials.username,
        credentials.password
      )
    end

    def agent
      @agent ||= Noip::Agent.new
    end

    def remote_ip
      @remote_ip ||= Noip::RemoteIp.new
    end

    def credentials
      @credentials ||= Noip::Credentials.new
    end

  end
end
