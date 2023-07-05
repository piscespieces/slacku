module Slacku
  module Api
    class Request
      def initialize(client = Slacku.configuration.client)
        @client = client
      end

      def get(endpoint, params = {}, headers = {})
        @client.send_request(endpoint: endpoint, http_method: "get", params: params, headers: headers)
      end

      def post(endpoint, params = {}, headers = {})
        @client.send_request(endpoint: endpoint, http_method: "post", params: params, headers: headers)
      end
    end
  end
end