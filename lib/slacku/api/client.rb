# require "faraday"
# require "faraday/multipart"

module Slacku
  module Api
    class Client
      def initialize(access_token)
        @access_token = access_token
      end

      def send_request(endpoint: "", http_method: "post", params: {}, headers: { 'Content-Type': 'application/json' })
        url = ApiConfiguration::API_URL

        faraday_request = faraday(url)

        response = faraday_request.public_send(http_method, endpoint, params, headers)

        return nil if response.body == ""

        JSON.parse(response.body)
      end

      def faraday(url)
        ::Faraday.new(url) do |client|
          client.request :multipart
          client.request :url_encoded
          client.adapter ::Faraday.default_adapter
          client.headers['Authorization'] = "Bearer #{@access_token}" unless @access_token.nil?
        end
      end
    end
  end
end
