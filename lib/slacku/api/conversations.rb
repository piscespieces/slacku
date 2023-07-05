# frozen_string_literal: true
module Slacku
  module Api
    class Conversations < Request
      CONVERSATIONS_LIST_ENDPOINT = "conversations.list"

      def initialize
        super
      end

      def conversations_list(params = { limit: 9999 })
        get(CONVERSATIONS_LIST_ENDPOINT, params)
      end

      def get_channel_id_by_name(channel_name)
        response = conversations_list
        channels = response["channels"]
        channel = channels.find do |ch|
          ch["name"] == channel_name
        end
        channel_id = channel["id"]
      end
    end
  end
end