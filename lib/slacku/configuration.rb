module Slacku
  class Configuration
    attr_accessor :access_token

    def initialize(access_token = "")
      @access_token = access_token
    end

    def client
      Slacku::Api::Client.new(access_token)
    end
  end
end
