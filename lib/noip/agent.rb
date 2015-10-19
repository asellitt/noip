module Noip
  class Agent

    def user_agent
      "User-Agent: #{update_program}/#{version_number} #{maintainer_email}"
    end

  private

    def update_program
      "noip ruby gem"
    end

    def version_number
      "v#{Noip::VERSION}"
    end

    def maintainer_email
      "anthony.noip_gem@asellitt.com"
    end

  end
end
