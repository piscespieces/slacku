# frozen_string_literal: true
require "faraday"
require "faraday/multipart"
require "json"

require_relative "slacku/version"
require_relative "slacku/error"
require_relative "slacku/configuration"
require_relative "slacku/api/api_configuration"
require_relative "slacku/api/client"
require_relative "slacku/api/request"
require_relative "slacku/api/conversations"
require_relative "slacku/api/messages"

module Slacku
  class << self
    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield(configuration)
    end
  end
end
