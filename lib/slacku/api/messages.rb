module Slacku
  module Api
    class Message < Request
      POST_MESSAGE_ENDPOINT = "chat.postMessage"

      def initialize
        super
      end

      def post_message(params = {})
        raise "Channel name must be provided" unless params[:channel].present?

        channel_id = Slacku::Api::Conversations.new.get_channel_id_by_name(params[:channel])
        payload = {
          channel: channel_id,
          text: params[:text]
        }
        post(POST_MESSAGE_ENDPOINT, payload)
      end
    end
  end
end